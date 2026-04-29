import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../bloc/notification_bloc.dart';

class NotificationItemCard extends StatelessWidget {
  final NotificationItemEntity item;
  final int userId;

  const NotificationItemCard({
    super.key,
    required this.item,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    bool isRead = item.isRead;

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        if (!isRead) {
          context.read<NotificationBloc>().add(
            NotificationMarkedAsRead(notificationId: item.id, userId: userId),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isRead
              ? Colors.white
              : const Color(0xFFF4F4F4).withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isRead
                ? const Color(0xFFC9C9CD).withOpacity(0.3)
                : const Color(0xFF0075FF).withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- ICON CIRCLE ---
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                item.type == "BOOKING"
                    ? Icons.calendar_today_rounded
                    : Icons.notifications_none_rounded,
                color: isRead
                    ? const Color(0xFF8D969E)
                    : const Color(0xFF0075FF),
                size: 22,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontWeight: isRead ? FontWeight.w500 : FontWeight.w600,
                      fontSize: 15,
                      color: const Color(0xFF191C1F),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.message,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF505A63),
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.createdAt,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF8D969E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (!isRead)
              Container(
                margin: const EdgeInsets.only(top: 6),
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFF0075FF),
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
