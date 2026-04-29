# LumiCare - Ứng dụng đặt lịch khám bệnh tại nhà

LumiCare là một ứng dụng di động toàn diện hỗ trợ đặt lịch khám bệnh được xây dựng bằng Flutter. Ứng dụng cho phép người dùng tìm kiếm bác sĩ, xem thông tin phòng khám, đặt lịch hẹn khám y tế, quản lý hồ sơ bệnh nhân và nhận thông báo theo thời gian thực. Ứng dụng được thiết kế với một kiến trúc có khả năng mở rộng tốt, sử dụng gRPC để giao tiếp với backend và BLoC để quản lý trạng thái.

## 🚀 Tính năng nổi bật

- **Xác thực (`auth`)**: Đăng nhập, đăng ký và quản lý phiên làm việc của người dùng một cách an toàn.
- **Trang chủ (`home`)**: Bảng điều khiển trung tâm xem tin tức, tìm kiếm và nhận thông báo theo thời gian thực.
- **Danh mục Bác sĩ & Phòng khám (`doctor`, `clinic`)**: Xem và tìm kiếm các bác sĩ chuyên khoa và phòng khám y tế.
- **Chuyên khoa & Dịch vụ (`specialty`, `services`)**: Khám phá các chuyên khoa y tế và dịch vụ chăm sóc sức khỏe.
- **Đặt lịch hẹn (`booking`)**: Lên lịch và quản lý các cuộc hẹn khám bệnh một cách dễ dàng.
- **Quản lý Bệnh nhân (`patient`)**: Quản lý thông tin chi tiết, hồ sơ và bệnh án của bệnh nhân.
- **Hồ sơ Điều trị (`treatment`)**: Truy cập và xem lịch sử cùng với kế hoạch điều trị.
- **Thanh toán (`payment`)**: Tích hợp cổng thanh toán cho phí đặt lịch.
- **Bản đồ & Vị trí (`location`)**: Dịch vụ dựa trên vị trí để tìm các phòng khám gần nhất.
- **Hồ sơ Người dùng (`profile`)**: Quản lý cài đặt tài khoản cá nhân và tùy chọn.
- **Thông báo đẩy (Push Notifications)**: Cập nhật và nhắc nhở theo thời gian thực thông qua OneSignal.

## 🏗️ Kiến trúc dự án

Dự án được cấu trúc theo **Kiến trúc theo Hướng Tính năng (Feature-Driven / Modular Architecture)** để đảm bảo tính dễ bảo trì và khả năng mở rộng.

```text
lib/
├── core/                  # Hạ tầng cốt lõi và các tiện ích dùng chung
│   ├── di/                # Thiết lập Dependency Injection (GetIt)
│   ├── network/           # Clients gọi API, model gRPC, interceptors
│   └── services/          # Các dịch vụ của bên thứ 3 (VD: OneSignal)
├── feature/               # Các mô-đun tính năng
│   ├── auth/              # Tính năng xác thực
│   ├── booking/           # Đặt lịch hẹn
│   ├── clinic/            # Khám phá phòng khám
│   ├── doctor/            # Hồ sơ bác sĩ
│   ├── home/              # Bảng điều khiển chính (Trang chủ)
│   ├── ...                # Các tính năng khác
└── main.dart              # Điểm bắt đầu (Entry point) của ứng dụng
```

### Quản lý Trạng thái (State Management)
- **BLoC (Business Logic Component)**: Được sử dụng xuyên suốt trên các tính năng (`flutter_bloc`) để tách biệt giao diện UI với logic nghiệp vụ.

### Dependency Injection
- **GetIt**: Được dùng như một service locator. Mỗi tính năng có một lớp DI riêng (ví dụ: `AuthInjector`, `BookingInjector`) để đăng ký các dependency một cách lười (lazy).

## 🛠️ Công nghệ & Thư viện sử dụng

- **Framework**: [Flutter](https://flutter.dev/) (Kích hoạt Material 3)
- **Ngôn ngữ**: Dart (SDK `>= 3.11.4`)
- **Quản lý trạng thái**: `flutter_bloc`, `bloc`, `rxdart`, `equatable`
- **Kết nối mạng**: `grpc`, `protobuf`, `dio`, `http`, `socket_io_client`
- **Điều hướng (Routing)**: `go_router`
- **Dependency Injection**: `get_it`
- **Lưu trữ cục bộ**: `shared_preferences`
- **Thông báo**: `onesignal_flutter`
- **Thành phần UI**: `flutter_rating_bar`, `flutter_markdown`, `flutter_widget_from_html`, `cupertino_icons`, `remixicon`
- **Tiện ích**: `image_picker`, `jwt_decoder`, `intl`, `dartz` (Lập trình hàm)

## ⚙️ Hướng dẫn cài đặt

### Yêu cầu hệ thống
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Phiên bản `^3.11.4` hoặc tương thích)
- Dart SDK
- Android Studio / Xcode để chạy máy ảo và build ứng dụng

### Cài đặt

1. **Clone dự án**:
   ```bash
   git clone <repository_url>
   cd lumi_care
   ```

2. **Cài đặt các gói phụ thuộc (Dependencies)**:
   ```bash
   flutter pub get
   ```

3. **Sinh file gRPC (Tùy chọn)**:
   Nếu bạn chỉnh sửa các file `.proto`, bạn sẽ cần tạo lại các file Dart của gRPC thông qua `protoc_plugin` và `build_runner`.
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Chạy ứng dụng**:
   ```bash
   flutter run
   ```

## 📱 Cấu hình Ứng dụng
- **Icon Ứng dụng**: Được quản lý thông qua thư viện `flutter_launcher_icons`.
- **Màn hình chờ (Splash Screen)**: Được thiết lập tự động qua `flutter_native_splash`.
