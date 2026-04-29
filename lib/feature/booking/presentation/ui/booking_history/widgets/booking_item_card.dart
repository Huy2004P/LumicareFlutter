import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../application/constants/route_constants.dart';
import 'booking_status_badge.dart';

class BookingItemCard extends StatelessWidget {
  final BookingItemEntity booking;
  final Function(BookingItemEntity) onCancel;
  final Function(BookingItemEntity) onDelete;

  const BookingItemCard({
    super.key,
    required this.booking,
    required this.onCancel,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final String status = booking.status.toLowerCase();

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F4F4), width: 1.5),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              BookingStatusBadge(
                text: _getStatusText(status),
                color: _getStatusColor(status),
              ),
              BookingStatusBadge(
                text: _getPaymentStatusText(booking.paymentStatus),
                color: _getPaymentStatusColor(booking.paymentStatus),
              ),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              "${booking.doctorName} - ${booking.serviceName}",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Color(0xFF191C1F),
              ),
            ),
          ),
          children: [
            const Divider(color: Color(0xFFF4F4F4)),
            _buildRow(Icons.calendar_today_rounded, "Ngày: ${booking.date}"),
            _buildRow(Icons.access_time_rounded, "Giờ: ${booking.timeDisplay}"),
            _buildRow(
              Icons.person_outline_rounded,
              "Bệnh nhân: ${booking.patientName}",
            ),
            _buildRow(
              Icons.location_on_outlined,
              "Địa chỉ: ${booking.address}",
            ),
            _buildRow(
              Icons.payment_rounded,
              "Thanh toán: ${_getPaymentMethod(booking.paymentMethod)}",
            ),
            if (booking.reason.isNotEmpty) _buildReasonBox(booking.reason),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${booking.price.toInt()}đ",
                  style: const TextStyle(
                    color: Color(0xFF191C1F),
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                _buildActionWidget(context, status),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionWidget(BuildContext context, String status) {
    if (status == 'pending') {
      return ElevatedButton.icon(
        onPressed: () => onCancel(booking),
        icon: const Icon(Icons.close_rounded, size: 16),
        label: const Text(
          "Hủy lịch",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF4F4F4),
          foregroundColor: Colors.red,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );
    }

    if (status == 'completed') {
      return ElevatedButton.icon(
        onPressed: () {
          context.pushNamed(
            BookingRoutes.feedbackScreen,
            extra: {
              'booking_id': booking.id,
              'patient_id': booking.patientId,
              'doctor_id': booking.doctorId,
              'clinic_id': booking.clinicId,
              'service_id': booking.serviceId,
              'doctor_name': booking.doctorName,
            },
          );
        },
        icon: const Icon(Icons.star_rounded, size: 16),
        label: const Text(
          "Đánh giá",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
      );
    }

    return IconButton(
      icon: const Icon(Icons.delete_outline_rounded, color: Color(0xFF8D969E)),
      onPressed: () => onDelete(booking),
    );
  }

  Widget _buildRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: const Color(0xFF0075FF)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Color(0xFF505A63)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReasonBox(String content) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Lý do: $content",
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF505A63),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Color _getStatusColor(String s) => s == 'confirmed'
      ? Colors.green
      : (s == 'pending'
            ? const Color(0xFF0075FF)
            : (s == 'cancelled' ? Colors.red : Colors.grey));
  String _getStatusText(String s) => s == 'confirmed'
      ? "Đã xác nhận"
      : (s == 'pending'
            ? "Đang chờ"
            : (s == 'cancelled' ? "Đã hủy" : "Thành công"));
  Color _getPaymentStatusColor(int s) => s == 1
      ? Colors.green
      : (s == 2 ? Colors.orange : (s == 3 ? Colors.red : Colors.grey));

  String _getPaymentStatusText(int s) => s == 1
      ? "Đã thanh toán"
      : (s == 2 ? "Chờ xác nhận" : (s == 3 ? "Đã hủy" : "Chưa thanh toán"));

  String _getPaymentMethod(String m) =>
      m == 'PAY2' ? "Chuyển khoản" : (m == 'PAY3' ? "VietQR" : "Tiền mặt");
}
