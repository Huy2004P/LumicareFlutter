Luồng Đặt Lịch Khám (Booking Flow): Cốt lõi của app (gồm lấy lịch rỗng, đặt lịch, upload ảnh lên Cloudinary).
Luồng Xác Thực (Authentication Flow): Đăng nhập, đăng ký, quên mật khẩu (OTP), và tự động Refresh Token.
Luồng Danh mục (Public Data): Lấy danh sách Bác sĩ, Phòng khám, Chuyên khoa, Dịch vụ.
Luồng Quản lý Hồ sơ Bệnh nhân (Patient Profile): Tạo và quản lý hồ sơ cho bản thân/người thân.
Luồng Quản lý Cuộc hẹn (Appointment Management): Xem danh sách, hủy lịch khám.
Luồng Thanh toán (Payment Flow): Quét mã QR, xác nhận thanh toán chuyển khoản.
Luồng Sổ khám bệnh & Điều trị (Treatment History): Theo dõi đơn thuốc, chỉ định xét nghiệm từ bác sĩ.
Luồng Tìm kiếm Tổng hợp (Global Search): Tìm kiếm chéo giữa phòng khám, bác sĩ.
Luồng Đánh giá (Feedback & Review): Chấm điểm và xem nhận xét.
Luồng Quản lý Tài khoản (User Profile): Cập nhật thông tin cá nhân, thay ảnh đại diện (avatar).
Luồng Dữ liệu Vị trí (Location Services): Tải cây địa giới hành chính (Tỉnh/Thành), tính toán khoảng cách tọa độ.
Luồng Nhận Thông báo (Notification): Cả Real-time in-app qua gRPC Server Streaming và Push qua OneSignal.