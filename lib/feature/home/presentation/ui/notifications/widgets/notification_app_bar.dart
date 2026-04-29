import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final TabController tabController;
  final VoidCallback onBack;
  final VoidCallback onMarkAllRead;

  const NotificationAppBar({
    super.key,
    required this.tabController,
    required this.onBack,
    required this.onMarkAllRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xFF191C1F),
                      size: 20,
                    ),
                    onPressed: onBack,
                  ),
                  const Text(
                    "THÔNG BÁO",
                    style: TextStyle(
                      color: Color(0xFF191C1F),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.done_all_rounded,
                      color: Color(0xFF0075FF),
                      size: 24,
                    ),
                    onPressed: onMarkAllRead,
                  ),
                ],
              ),
            ),
            // --- REVOLUT TABBAR STYLE ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(9999),
                ),
                child: TabBar(
                  controller: tabController,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(9999),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFFC9C9CD).withOpacity(0.3),
                    ),
                  ),
                  labelColor: const Color(0xFF0075FF),
                  unselectedLabelColor: const Color(0xFF8D969E),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                  tabs: const [
                    Tab(text: "Tất cả"),
                    Tab(text: "Mới"),
                    Tab(text: "Cũ"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
