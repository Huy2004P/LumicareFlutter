// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/feature/booking/application/constants/route_constants.dart';
import 'package:remixicon/remixicon.dart';

class MainPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MainPage({super.key, required this.navigationShell});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Color revolutDark = const Color(0xFF191C1F);
  final Color skyBlue = const Color(0xFF0075FF);
  final Color lightGray = const Color(0xFFF4F4F4);
  final Color coolGray = const Color(0xFF8D969E);

  int get _currentActiveIndex => widget.navigationShell.currentIndex;

  void onClickTabbar(int tappedIndex) {
    widget.navigationShell.goBranch(
      tappedIndex,
      initialLocation: tappedIndex == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: widget.navigationShell,
        bottomNavigationBar: SafeArea(
          top: false,
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9999),
              border: Border.all(
                color: const Color(0xFFC9C9CD).withOpacity(0.4),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(
                  0,
                  Remix.home_smile_2_fill,
                  Remix.home_smile_2_line,
                  "Trang chủ",
                ),
                _buildNavItem(
                  1,
                  Remix.apps_2_fill,
                  Remix.apps_2_line,
                  "Dịch vụ",
                ),

                // NÚT TRUNG TÂM (MAIN ACTION)
                _buildCenterAction(),

                _buildNavItem(
                  2,
                  Remix.calendar_check_fill,
                  Remix.calendar_check_line,
                  "Lịch sử",
                ),
                _buildNavItem(
                  3,
                  Remix.user_3_fill,
                  Remix.user_3_line,
                  "Của tôi",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCenterAction() {
    return GestureDetector(
      onTap: () => context.pushNamed(BookingRoutes.bookingScreen),
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: skyBlue, // Phẳng hoàn toàn, dùng Sky Blue làm điểm nhấn
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add_rounded, color: Colors.white, size: 30),
      ),
    );
  }

  Widget _buildNavItem(
    int index,
    IconData activeIcon,
    IconData inactiveIcon,
    String label,
  ) {
    final isSelected = _currentActiveIndex == index;

    return GestureDetector(
      onTap: () => onClickTabbar(index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSelected ? activeIcon : inactiveIcon,
              color: isSelected
                  ? skyBlue
                  : coolGray, // Active màu Sky Blue cho đồng bộ
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? skyBlue : coolGray,
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
