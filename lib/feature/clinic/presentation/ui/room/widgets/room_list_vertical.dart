import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/clinic/application/constants/route_constants.dart';

class RoomVerticalList extends StatelessWidget {
  final List<RoomEntity> rooms;

  const RoomVerticalList({super.key, required this.rooms});

  @override
  Widget build(BuildContext context) {
    if (rooms.isEmpty) return const SizedBox.shrink();

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        final room = rooms[index];
        return _buildRoomItem(context, room);
      },
    );
  }

  Widget _buildRoomItem(BuildContext context, RoomEntity room) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.blue.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🚀 1. Header: Tên phòng & Icon
          Row(
            children: [
              const Icon(
                Icons.meeting_room_rounded,
                color: Colors.blue,
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  room.name.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // 🚀 2. Location
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
                color: Colors.redAccent,
              ),
              const SizedBox(width: 8),
              Text(
                "Vị trí: ${room.location}",
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // 🚀 3. Description
          Text(
            room.description,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              height: 1.5,
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1),
          ),

          // 🚀 4. Nút bấm điều hướng sang danh sách bác sĩ
          Material(
            // Thêm Material để InkWell có hiệu ứng lấp lánh (ripple)
            color: Colors.transparent,
            child: InkWell(
              onTap: () => _navigateToDoctorList(
                context,
                room,
              ), // 🚀 Gọi hàm chuyển trang
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.groups_outlined,
                      color: Colors.blue,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "XEM DANH SÁCH BÁC SĨ TRỰC THUỘC",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDoctorList(BuildContext context, RoomEntity room) {
    context.pushNamed(
      ClinicRoutes.doctorsByRoomScreen,
      extra: {'roomId': room.id, 'roomName': room.name},
    );
  }
}
