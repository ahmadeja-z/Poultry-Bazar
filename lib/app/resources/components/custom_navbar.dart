import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../screen_controller/nav_bar_controller.dart';
import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomNavbar extends StatelessWidget {
  final NavController navController;

  CustomNavbar({required this.navController});

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      currentIndex: navController.selectedIndex.value,
      onTap: navController.changePage,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        fontFamily: AppFonts.poppins,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 12.sp,
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w700,
      ),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.dashboard),
          label: 'Dashboard',
          activeIcon: Icon(
            Icons.dashboard,
            color: AppColors.primaryYellow,
            size: 28.h,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.white,
          icon: const Icon(Icons.pie_chart),
          label: 'Analysis',
          activeIcon: Icon(
            Icons.pie_chart,
            color: Colors.orange,
            size: 28.h,
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.subscriptions_rounded),
          label: 'Media',
          activeIcon: Icon(
            Icons.subscriptions_rounded,
            color: Colors.orange,
            size: 28.h,
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: 'Profile',
          activeIcon: Icon(
            Icons.person,
            color: Colors.orange,
            size: 28.h,
          ),
        ),
      ],
      selectedItemColor: AppColors.primaryYellow,
      unselectedItemColor: AppColors.grey,
    ));
  }
}
