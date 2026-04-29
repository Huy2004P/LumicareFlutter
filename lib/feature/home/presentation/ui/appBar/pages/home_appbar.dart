import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/appBar/widgets/ringbellicon.dart';
import '../../notifications/bloc/notification_bloc.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String? avatarUrl;
  final bool isOnline;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onSearchTap;
  final VoidCallback? onMenuTap;
  final VoidCallback? onAvatarTap;

  const HomeAppBar({
    super.key,
    required this.userName,
    this.avatarUrl,
    this.isOnline = true,
    this.onNotificationTap,
    this.onSearchTap,
    this.onMenuTap,
    this.onAvatarTap,
  });

  // --- LOGIC LẤY CHỮ CÁI ĐẦU TÊN (LUXURY STYLE) ---
  String _getInitials(String name) {
    if (name.isEmpty) return "U";
    List<String> nameParts = name.trim().split(" ");
    if (nameParts.length > 1) {
      return (nameParts.first[0] + nameParts.last[0]).toUpperCase();
    }
    return nameParts.first[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    // Check nếu avatar thực sự có data hay không
    final bool hasAvatar = avatarUrl != null && avatarUrl!.isNotEmpty;

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                child: Row(
                  children: [
                    // --- AVATAR ---
                    GestureDetector(
                      onTap: onAvatarTap,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: hasAvatar
                                    ? const Color(0xFFF4F4F4)
                                    : const Color(0xFF0075FF).withOpacity(
                                        0.2,
                                      ), // Border nhẹ cho placeholder
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: hasAvatar
                                  ? const Color(0xFFF4F4F4)
                                  : const Color(0xFF0075FF),
                              backgroundImage: hasAvatar
                                  ? NetworkImage(
                                      "${avatarUrl!}?t=${DateTime.now().millisecondsSinceEpoch}",
                                    )
                                  : null,
                              child: !hasAvatar
                                  ? Text(
                                      _getInitials(userName),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                          if (isOnline)
                            Positioned(
                              right: 2,
                              bottom: 2,
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00D722),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),

                    // --- CỤM CHÀO HỎI ---
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chào $userName,",
                            style: const TextStyle(
                              color: Color(0xFF505A63),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                "Lumicare",
                                style: TextStyle(
                                  color: Color(0xFF191C1F),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(
                                Icons.verified_user_rounded,
                                size: 16,
                                color: Color(0xFF0075FF),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "Chúc bạn một ngày tràn đầy sức khỏe! ✨",
                            style: TextStyle(
                              color: Color(0xFF0075FF),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildActionIcon(
                      child: BlocBuilder<NotificationBloc, NotificationState>(
                        builder: (context, state) => RingingBellIcon(
                          unreadCount: state.unreadCount,
                          isRinging: state.status == NotificationStatus.success,
                        ),
                      ),
                      onTap: onNotificationTap,
                    ),
                    _buildActionIcon(
                      child: const Icon(
                        Icons.restart_alt_rounded,
                        color: Color(0xFF191C1F),
                        size: 24,
                      ),
                      onTap: onMenuTap,
                    ),
                  ],
                ),
              ),

              // PILL SEARCH BAR
              GestureDetector(
                onTap: onSearchTap,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 8, 20, 15),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(9999),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Color(0xFF0075FF),
                        size: 22,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Tìm bác sĩ, chuyên khoa...",
                        style: TextStyle(
                          color: Color(0xFF8D969E),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionIcon({required Widget child, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(99),
      child: Padding(padding: const EdgeInsets.all(8), child: child),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
