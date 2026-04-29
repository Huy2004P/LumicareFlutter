import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  late IO.Socket socket;
  final String serverUrl =
      "http://192.168.1.58:3001"; // 🎯 THAY IP MÁY TÍNH ÔNG VÀO ĐÂY

  void init(int userId) {
    socket = IO.io(serverUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.onConnect((_) {
      print('🚀 [Socket] Đã kết nối thành công: ${socket.id}');
      // Đăng ký phòng cho User ngay khi kết nối
      socket.emit("register", userId);
    });

    socket.onDisconnect((_) => print('🔌 [Socket] Đã ngắt kết nối'));

    socket.onConnectError((data) => print('❌ [Socket] Lỗi kết nối: $data'));
  }

  // Hàm để lắng nghe sự kiện bất kỳ (Dùng cho Payment)
  void onEvent(String eventName, Function(dynamic) callback) {
    socket.on(eventName, (data) => callback(data));
  }

  void disconnect() {
    socket.disconnect();
  }
}
