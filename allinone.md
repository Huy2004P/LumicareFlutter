# TÀI LIỆU TOÀN TẬP VỀ LUỒNG HOẠT ĐỘNG (WORKFLOWS) TRONG LUMICARE

Tài liệu này cung cấp cái nhìn toàn diện về kiến trúc và toàn bộ các luồng nghiệp vụ (workflows) chạy ngầm trong ứng dụng LumiCare từ lúc người dùng nhấn nút trên UI cho tới khi kết nối xuống Backend qua gRPC.

---

## 1. Kiến trúc tổng quan (Clean Architecture & gRPC)

Ứng dụng tuân thủ mô hình **Clean Architecture** kết hợp với **Bloc Pattern** cho State Management và **gRPC** cho tầng Network.

Mô hình luồng dữ liệu chuẩn cho bất kỳ tính năng nào:
`UI (Người dùng thao tác) -> Event -> Bloc -> State (cập nhật UI) -> UseCase -> Repository -> RepositoryImpl -> DataSource -> gRPC Remote Client (Stub) -> gRPC Server (Backend)`

### 1.1 Cơ chế kết nối tới Server (IP/gRPC)
Thay vì sử dụng REST API với HTTP/1.1 thông thường (dùng `http` hoặc `dio`), ứng dụng dùng package `grpc` của Dart.
- gRPC sử dụng giao thức HTTP/2, truyền tải dữ liệu dưới dạng nhị phân (Protocol Buffers - Protobuf) giúp tốc độ cực nhanh và bảo mật hơn.
- Ứng dụng mở một `ClientChannel` kết nối trực tiếp tới IP/Port của Backend.
- Tất cả các Service (Auth, Booking, Doctor, v.v.) được gom chung vào một class gọi là `AllRemotes` để dễ quản lý.

### 1.2 Xử lý Auth Interceptor
Khi kết nối xuống Server, các API yêu cầu xác thực cần gửi kèm Access Token.
- **`AuthInterceptor`**: Kế thừa `ClientInterceptor` của thư viện gRPC.
- Khi có bất kỳ request nào được gửi đi, `AuthInterceptor` sẽ tự động lấy Token từ `AuthLocalDataSource` (nơi lưu trữ token cục bộ).
- Sau đó, nó chèn chuỗi `'authorization': 'Bearer $token'` vào phần `metadata` (tương đương với Header trong REST API).
- Server nhận được metadata này, giải mã Token để định danh người dùng.

### 1.3 Xử lý Token hết hạn (Refresh Token)
Trong `AppRepositoryImpl`, có một hàm bọc tên là `_authenticatedRequest`.
- Mọi hàm gọi DataSource đều được bọc bởi hàm này.
- Nếu gRPC trả về lỗi `StatusCode.unauthenticated` (mã lỗi 16 - do Token hết hạn), hàm này sẽ tự động gọi API `refreshToken` để lấy token mới, lưu xuống local, sau đó tự động gọi lại Request ban đầu mà người dùng không hề hay biết (Trải nghiệm liền mạch - Seamless Experience).

---

## 2. Chi tiết Toàn bộ các luồng hoạt động (Workflows) trong App

### 2.1 Luồng Đặt Lịch Khám (Booking Flow)
Đây là luồng cốt lõi của ứng dụng.
- **Bước 1: Chọn ngày giờ**
  - **UI**: Màn hình Booking chọn ngày.
  - **Bloc**: `BookingBloc` nhận event `BookingDateChanged`.
  - **UseCase**: `GetScheduleUseCase`.
  - **RepositoryImpl**: Gọi hàm `getSchedulesById`.
  - **DataSource**: Map ra Protobuf `GetScheduleRequest` và gọi `remote.schedule.getScheduleByDate`.
- **Bước 2: Bấm nút "Xác nhận đặt lịch"**
  - **UI**: Điền lý do, đính kèm ảnh và bấm Xác nhận.
  - **Bloc**: `BookingConfirmBloc`.
  - **UseCase**: `CreateBookingUseCase` -> `CreateNotificationUseCase`.
  - **RepositoryImpl**: `createBooking` (bọc trong `_authenticatedRequest`).
  - **DataSource**: `CloudinaryDataSource` (để up ảnh lên Cloudinary lấy URL) -> `AppDataSource` map Protobuf `CreateBookingRequest` gọi `remote.booking.createBooking`.

### 2.2 Luồng Xác Thực (Authentication Flow)
- **Đăng nhập**:
  - **UI**: Nhập Email & Password, bấm Đăng nhập.
  - **Bloc**: `AuthBloc` (event `AuthLoginRequested`).
  - **DataSource**: Gọi thẳng `remote.auth.login(LoginRequest)`. Lấy accessToken, refreshToken lưu xuống Local Storage. Gọi `OneSignal.login(user.id)`.
- **Đăng ký & Quên mật khẩu**:
  - Gửi mã OTP xác thực qua Email bằng cách gọi `remote.auth.sendOtp`. Sau đó gọi `remote.auth.register` hoặc `remote.auth.resetPassword` với mã OTP kèm theo.

### 2.3 Luồng Danh mục: Bác sĩ / Phòng khám / Chuyên khoa
- **UI**: Xem danh sách hoặc tra cứu Bác sĩ, Phòng khám, Dịch vụ, Chuyên khoa.
- **Bloc**: `DoctorBloc`, `ClinicBloc`, `SpecialtyBloc`.
- **RepositoryImpl**: Các dữ liệu này là Public, không bọc qua `_authenticatedRequest`.
- **DataSource**: Lấy dữ liệu qua `remote.doctor` hoặc `remote.masterData`. Trả về list Protobuf rồi map ra `Entity` cho UI.

### 2.4 Luồng Quản lý Hồ sơ Bệnh nhân (Patient Profile)
- **UI**: Màn hình tạo hồ sơ cho bản thân hoặc người thân.
- **Bloc**: `PatientProfileBloc`.
- **UseCase**: `CreatePatientProfileUseCase`, `GetPatientProfilesUseCase`.
- **DataSource**: Sử dụng `remote.patientProfile`. Thông tin cá nhân được bảo mật chặt chẽ nên luôn đi qua `_authenticatedRequest`.

### 2.5 Luồng Quản lý Cuộc hẹn (Appointment Management)
- **UI**: Tab "Lịch khám", xem danh sách Cuộc hẹn sắp tới, Lịch sử khám, hoặc bấm Hủy lịch khám.
- **Bloc**: `AppointmentBloc`.
- **DataSource**: Gọi `remote.appointment` để lấy danh sách cuộc hẹn của user, hoặc gọi hàm `cancelAppointment` để hủy.

### 2.6 Luồng Thanh toán (Payment Flow)
- **UI**: Thanh toán trước khi khám hoặc thanh toán dịch vụ phát sinh.
- **Bloc**: `PaymentBloc`.
- **DataSource**: `remote.payment`. Lấy hướng dẫn chuyển khoản (Mã QR, số tài khoản) qua `getPaymentInstruction` và xác nhận bệnh nhân đã thanh toán qua `patientConfirmTransfer`.

### 2.7 Luồng Sổ khám bệnh & Điều trị (Treatment History)
- **UI**: Xem kết quả khám bệnh, đơn thuốc, chỉ định xét nghiệm do bác sĩ gửi.
- **Bloc**: `TreatmentBloc`.
- **DataSource**: Giao tiếp qua `remote.treatment`. Lấy quá trình điều trị (Medical Record) và đơn thuốc của hồ sơ bệnh nhân tương ứng.

### 2.8 Luồng Tìm kiếm Tổng hợp (Global Search)
- **UI**: Thanh tìm kiếm ở trang chủ.
- **Bloc**: `HomeSearchBloc`.
- **DataSource**: Khi người dùng gõ từ khóa, gọi `remote.search.globalSearch`. Server sẽ tìm kiếm xuyên suốt nhiều bảng (Bác sĩ, Phòng khám, Bệnh viện) và trả về một danh sách hỗn hợp.

### 2.9 Luồng Đánh giá (Feedback & Review)
- **UI**: Bấm vào nút đánh giá (số sao & nhận xét) sau khi khám xong.
- **Bloc**: `FeedbackBloc`.
- **DataSource**: Gọi `remote.feedback` để `submitFeedback` hoặc `getDoctorFeedbacks` để hiển thị ở trang chi tiết bác sĩ.

### 2.10 Luồng Quản lý Tài khoản (User Profile)
- **UI**: Màn hình Cài đặt (Đổi avatar, đổi tên, đổi mật khẩu).
- **Bloc**: `ProfileBloc`.
- **DataSource**: Upload avatar qua Cloudinary, sau đó gọi `remote.profile.updateProfile` để lưu URL ảnh và thông tin mới lên Server.

### 2.11 Luồng Dữ liệu Vị trí (Location Services)
- **UI**: Chọn Tỉnh/Thành phố/Quận/Huyện hoặc tìm phòng khám gần nhất.
- **Bloc**: `LocationBloc`.
- **DataSource**: Giao tiếp qua `remote.location` để lấy cây địa giới hành chính hoặc tính khoảng cách (Distance/Coordinates) giữa User và Phòng khám.

### 2.12 Luồng Nhận Thông báo (Push & In-App Notification)
- **Real-time (In-App)**: Dùng `remote.notification.listenNotifications`. Đây là một **gRPC Server Streaming**. Kết nối mở liên tục, Backend có thông báo sẽ tự động đẩy về điện thoại. Bloc lắng nghe stream để cập nhật số lượng chấm đỏ trên icon chuông.
- **Push Notification**: Quản lý bằng OneSignal. Backend gọi API lên OneSignal, OneSignal sẽ bắn notification thẳng xuống OS (iOS/Android) mà không cần mở app.

---

## 3. So sánh chuyên sâu: gRPC API vs REST API

Trong buổi báo cáo, để giải thích tại sao dự án chọn gRPC thay vì REST API truyền thống, bạn có thể dựa vào các tiêu chí sau:

| Tiêu chí | gRPC | REST API |
| :--- | :--- | :--- |
| **Giao thức mạng** | Sử dụng chuẩn **HTTP/2**. Kết nối liên tục (Multiplexing), cho phép gửi nhiều request trên cùng 1 kết nối TCP. | Thường dùng **HTTP/1.1**. Mỗi request tải xong thường ngắt kết nối (hoặc Keep-Alive giới hạn). |
| **Định dạng dữ liệu** | **Protocol Buffers (Protobuf)**. Dữ liệu là dạng nhị phân (Binary). Kích thước siêu nhỏ, parse cực nhanh. | **JSON / XML**. Dữ liệu dạng văn bản (Text). Kích thước lớn hơn, thiết bị phải tốn CPU để parse JSON sang Object. |
| **Định nghĩa API (Contract)** | Phải có file hợp đồng `.proto`. Server và Client tự động sinh ra file code Dart/NodeJS chung (Strongly typed). Không lo sai lỗi chính tả biến. | Tự do định nghĩa (Dùng Swagger/OpenAPI). Dev tự code class model, rất dễ bị lỗi nếu thiếu trường hoặc gõ sai tên biến. |
| **Tốc độ & Hiệu năng** | Nhờ HTTP/2 và Protobuf, gRPC có thể **nhanh hơn 7-10 lần** so với REST. Rất thích hợp cho App Mobile mạng yếu (3G/4G). | Tốc độ phụ thuộc độ dài file JSON, nhìn chung tốn băng thông hơn. |
| **Giao tiếp Real-time** | Hỗ trợ Native Streaming từ core (Client Stream, Server Stream, Bidirectional Stream). Ví dụ: Stream Notification trong App. | Không hỗ trợ Stream chuẩn. Phải tích hợp thêm công nghệ khác như WebSocket hoặc Server-Sent Events (SSE). |
| **Bảo mật** | Rất khó bị Hacker bắt gói tin đọc trộm nội dung (vì dữ liệu là dạng nhị phân mã hoá). Bắt buộc phải mã hóa TLS. | Dễ bị sniff (bắt gói tin) đọc rõ nội dung JSON nếu cấu hình chứng chỉ SSL/TLS lỏng lẻo. |
| **Công cụ Debug** | Khó debug trên trình duyệt, không dùng CURL hay Postman bản cũ được (Phải dùng Postman mới có hỗ trợ gRPC, hoặc BloomRPC). | Cực kỳ thân thiện, dễ test ngay trên trình duyệt, Postman, CURL. |

### TỔNG KẾT CHO BUỔI BÁO CÁO:
Kiến trúc của dự án LumiCare tách biệt rõ ràng lớp Giao diện (UI) và lớp Xử lý Logic (Bloc, UseCase) theo mô hình **Clean Architecture**. Ở tầng tương tác dữ liệu, việc bao phủ toàn bộ 12+ luồng nghiệp vụ thông qua **gRPC** thay thế REST API không chỉ giúp tăng tốc độ truyền tải, tiết kiệm băng thông mạng 4G cho bệnh nhân, mà còn hỗ trợ đẩy dữ liệu theo thời gian thực (Streaming) một cách đồng bộ và bảo mật cao nhờ **Auth Interceptor** tự động gắn và cấp lại Token ngầm. Hệ thống hoàn chỉnh đáp ứng trọn vẹn vòng đời khám chữa bệnh từ: Tìm kiếm bác sĩ -> Đặt lịch -> Khám bệnh -> Thanh toán -> Nhận kết quả điều trị.
