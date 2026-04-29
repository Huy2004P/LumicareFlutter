import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/doctor/application/constants/route_constants.dart';
import '../../room/bloc/room_bloc.dart';

class DoctorsByRoomScreen extends StatefulWidget {
  final int roomId;
  final String roomName;

  const DoctorsByRoomScreen({
    super.key,
    required this.roomId,
    required this.roomName,
  });

  @override
  State<DoctorsByRoomScreen> createState() => _DoctorsByRoomScreenState();
}

class _DoctorsByRoomScreenState extends State<DoctorsByRoomScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RoomBloc>().add(GetDoctorsByRoomEvent(widget.roomId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFF4F7F9,
      ), // Màu nền hơi xanh xám cho giống văn phòng
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
            size: 20,
          ),
          onPressed: () => context.pop(),
        ),
        title: Column(
          children: [
            const Text(
              "DANH SÁCH HỒ SƠ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              widget.roomName,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<RoomBloc, RoomState>(
        builder: (context, state) {
          if (state is DoctorByRoomLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }

          if (state is DoctorByRoomSuccess) {
            final doctors = state.doctors;
            if (doctors.isEmpty) return _buildEmptyState();

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return _DoctorProfileFile(doctor: doctors[index]);
              },
            );
          }

          if (state is DoctorByRoomFailure) {
            return Center(
              child: Text(
                "Lỗi: ${state.message}",
                style: const TextStyle(color: Colors.redAccent),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.folder_off_outlined,
            size: 80,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 16),
          Text(
            "Chưa có hồ sơ bác sĩ tại\n${widget.roomName}",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

// --- Widget Miếng Hồ Sơ Bác Sĩ ---
class _DoctorProfileFile extends StatelessWidget {
  final dynamic doctor;

  const _DoctorProfileFile({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Phần "Tai" hồ sơ phía trên (nhìn cho giống folder)
          Container(
            height: 8,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF007BFF), // Màu xanh chủ đạo y tế
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Ảnh đại diện dạng bo tròn cứng
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(doctor.avatar),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Thông tin chính
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctor.fullName.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3142),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            doctor.position,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF007BFF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(Icons.phone_android, doctor.phone),
                          _buildInfoRow(
                            Icons.medical_services_outlined,
                            doctor.specialtyName,
                          ),
                          _buildInfoRow(
                            Icons.payments_outlined,
                            "${doctor.price.toInt()} VNĐ / Lượt",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(height: 32),
                const Text(
                  "TÓM TẮT TIỂU SỬ",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  doctor.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade700,
                    height: 1.5,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 12),
                // Nút xem chi tiết (Thay cho nút đặt lịch)
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      context.pushNamed(
                        DoctorRoutes.doctorDetailScreen,
                        extra: doctor.id,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF007BFF)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "XEM HỒ SƠ CHI TIẾT",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.grey),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
