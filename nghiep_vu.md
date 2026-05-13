# Phân tích chi tiết Source Code - LumiCare

## 1. Tổng quan dự án

* **Tên ứng dụng:** LumiCare - Health Booking System
* **Mục đích thực tế:** Ứng dụng y tế toàn diện hỗ trợ đặt lịch khám bệnh (đặt lịch theo bác sĩ, phòng khám, dịch vụ chuyên khoa), quản lý hồ sơ y tế, và thanh toán dịch vụ y tế trực tuyến.
* **Đối tượng người dùng mục tiêu:** 
    * **Bệnh nhân (Patients):** Người có nhu cầu tìm kiếm bác sĩ, đặt lịch khám, quản lý hồ sơ y tế cho bản thân và gia đình.
    * *(Hệ thống Backend hỗ trợ cả Bác sĩ và Quản trị viên, tuy nhiên code Frontend hiện tại chủ yếu tập trung vào luồng của bệnh nhân).*

## 2. Cấu trúc kỹ thuật

### Kiến trúc (Architecture)
Dự án được tổ chức rất chặt chẽ theo chuẩn **Clean Architecture** kết hợp với **Domain-Driven Design (DDD)**. Mỗi chức năng (feature) được cô lập trong thư mục `lib/feature/<tên_feature>` với 4 layer chính:
* **Presentation:** Chứa `ui` (giao diện, routing) và `bloc` (State Management).
* **Application:** Cấu hình Dependency Injection (DI) riêng cho feature và các hằng số (constants).
* **Domain:** Chứa `entities` (đối tượng nghiệp vụ thuần), `repositories` (interface định nghĩa hợp đồng dữ liệu) và `use_cases` (chứa business logic cốt lõi).
* **Data:** Chứa `datasources` (giao tiếp bên ngoài), `models` (Data Transfer Objects), và `repositories` (implement lại interface của Domain).

### Các công nghệ chính
* **State Management:** Sử dụng **BLoC** (Business Logic Component) thông qua package `flutter_bloc`. Hầu như mọi trang đều có một BLoC/Cubit riêng (ví dụ: `BookingConfirmBloc`, `DoctorBloc`, `HomeBloc`).
* **Phương thức giao tiếp:** Ứng dụng sử dụng **gRPC** kết hợp với **Protobuf** để giao tiếp với Backend thay vì REST API truyền thống. Điều này được chứng minh qua file `lib/core/network/data/remote/all_remote.dart` và thư mục `models/generated/*.pbgrpc.dart`.
* **Database/Lưu trữ:** 
    * Remote: Gọi trực tiếp qua gRPC Client.
    * Local: Sử dụng `shared_preferences` để lưu trữ token/session, `AuthLocalDataSource` để quản lý trạng thái đăng nhập cục bộ.
* **Dependency Injection:** Sử dụng package `get_it`.
* **Routing:** Quản lý bằng `go_router`.

## 3. Phân tích luồng nghiệp vụ (Business Flow)

### Luồng chính: Đặt lịch khám (Booking Flow)
Đây là tác vụ quan trọng nhất, diễn ra theo trình tự sau:
1. **UI (User Input):** Người dùng nhập thông tin tại `BookingConfirmPage` (chọn lịch, nhập lý do, chọn phương thức thanh toán, có thể đính kèm ảnh chụp bệnh án qua `ImagePicker`).
2. **Event Dispatch:** UI gửi event `ConfirmBookingSubmitted` cùng với payload và danh sách ảnh (`List<XFile>`) tới `BookingConfirmBloc` (file: `lib/feature/booking/presentation/ui/booking_confirm/bloc/booking_confirm_bloc.dart`).
3. **Use Case Execution:** BLoC gọi `CreateBookingUseCase` trong lớp Domain.
4. **Data Layer - Repository:** Use Case gọi qua interface `BookingRepository` và được xử lý bởi `BookingRepositoryImpl`.
5. **Data Source (Giao tiếp Backend):** Request đi đến `AppDataSource.createBooking()` (file: `lib/core/network/data/datasources/app_datasource.dart`). Tại đây:
    * **Xử lý ảnh:** Ứng dụng lấy từng ảnh, nén thành bytes và upload trực tiếp lên **Cloudinary** qua `CloudinaryDataSource`.
    * **Map Payload:** Đợi ảnh upload xong lấy được URL, đưa các URL này cùng với dữ liệu người dùng vào Protobuf class `CreateBookingRequest()`.
6. **gRPC Call:** App gọi `remote.booking.createBooking(request)`.
7. **Phản hồi & Notification:** Nếu gRPC trả về `success`, BLoC emit trạng thái `BookingConfirmStatus.success`, đồng thời gọi ngầm `CreateNotificationUseCase` để bắn một thông báo hệ thống ("Đặt lịch thành công! 🎉") vào luồng thông báo của app.

### Luồng dữ liệu (Data Flow)
* **Quy tắc khớp nối:** Dữ liệu trả về từ Backend (thông qua gRPC Stub) luôn là các object Protobuf (vd: `res.data`). Tại tầng `AppDataSource`, các object này BẮT BUỘC phải được map trực tiếp thành các `Entities` của tầng Domain (vd: map thành `NotificationItemEntity`, `DoctorEntity`). 
* Tầng UI tuyệt đối không gọi trực tiếp gRPC models mà chỉ render dựa trên các `Entities` an toàn. 

## 4. Tính năng cốt lõi (Core Features)

* **Quản lý Hồ sơ Bệnh nhân đa dạng (`Patient Profile`):** 
    * Một tài khoản (User) có thể quản lý nhiều hồ sơ bệnh nhân (cho bản thân, bố mẹ, con cái). Thể hiện qua `PatientProfileServiceClient` và `getAllPatientProfiles()`.
* **Luồng tìm kiếm toàn cầu (`Global Search`):**
    * Tích hợp tìm kiếm mạnh mẽ (có gợi ý từ khóa `getSearchSuggestions`) cho phép tra cứu bác sĩ, phòng khám, và dịch vụ từ trang chủ (file: `HomeSearchBloc`).
* **Lịch trình thời gian thực (`Schedule`):** 
    * Khi xem chi tiết Bác sĩ, hệ thống sẽ fetch các slot khám (time type) theo ngày cụ thể qua `remote.schedule.getScheduleByDate`. Các slot này trả về trạng thái `isAvailable` và số lượng `currentBooking` để UI khóa lại nếu đã đầy.
* **Hệ thống Thông báo (Notification Stream):**
    * App sử dụng tính năng **Streaming** của gRPC để nhận thông báo thời gian thực thông qua `listenNotifications` trả về một `Stream<NotificationItemEntity>`.

## 5. Đánh giá hệ thống

### Tính Scalable & Clean Code
* **Rất tốt (Highly Scalable):** Việc sử dụng Clean Architecture giúp project rất dễ mở rộng. Mỗi khi có tính năng mới (ví dụ thư mục `treatment`, `specialty`, `location`), lập trình viên chỉ cần clone cấu trúc thư mục, độc lập viết UI, Domain và Data mà không sợ ảnh hưởng module khác.
* **Clean Code:** Code chia hàm và phân trách nhiệm (Single Responsibility Principle) rất rõ. Các lệnh gRPC đều được gom về một mối ở `AllRemotes` và `AppDataSource`.

### Điểm cần tối ưu (Hiệu năng & UX)
1. **Xử lý Upload Ảnh (UX):** Trong `AppDataSource.createBooking`, việc upload ảnh lên Cloudinary là một tác vụ đồng bộ chờ trong vòng lặp `for (var file in imageFiles)`. Nếu mạng yếu hoặc nhiều ảnh, luồng này sẽ chặn lại rất lâu khiến UX bị treo ở trạng thái "Loading" mà không có thanh tiến trình (progress bar). Cần upload ảnh song song `Future.wait()` hoặc hiển thị phần trăm tiến độ ra UI.
2. **Quản lý Stream Notification (Memory Leak):** Việc mở gRPC stream cho thông báo (Notification Stream) nếu không được quản lý hủy (cancel) chu đáo trong `dispose` của BLoC/Widget khi người dùng đăng xuất sẽ gây hao pin và rò rỉ bộ nhớ.
3. **Caching Master Data (Hiệu năng):** Các danh sách như `Specialties` (Chuyên khoa) hay `Clinics` (Phòng khám) ít khi thay đổi. Hiện tại app gọi trực tiếp gRPC `getAllSpecialties()`. Cần tối ưu bằng cách lưu cache local (dùng `Hive` hoặc `Isar`) và chỉ đồng bộ khi có cờ báo hiệu thay đổi để tăng tốc độ load trang chủ.
