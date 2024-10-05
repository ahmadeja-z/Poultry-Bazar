import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';

import '../screen_controller/nav_bar_controller.dart';






class MainPage extends StatelessWidget {
  // Instantiate controller
  final NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => navController.pages[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,

          onTap: navController.changePage,showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(fontSize:12.sp,fontFamily: AppFonts.poppins,),
          selectedLabelStyle: TextStyle(fontSize:13.sp,fontFamily: AppFonts.poppins,fontWeight: FontWeight.w700 ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
              activeIcon: Icon(Icons.dashboard, color: AppColors.primaryYellow,size: 30.h,),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: 'Analysis',
              activeIcon: Icon(Icons.pie_chart, color: Colors.orange,size: 30.h,),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_rounded),
              label: 'Media',
              activeIcon: Icon(Icons.subscriptions_rounded, color: Colors.orange,size: 30.h,),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              activeIcon: Icon(Icons.person, color: Colors.orange,size: 30.h,),
            ),
          ],
          selectedItemColor: AppColors.primaryYellow,
          unselectedItemColor:AppColors.grey,
        ),
      ),
    );
  }
}

// Sample pages for each tab
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dashboard Page',
        style: TextStyle(fontSize: 24,color: Colors.black),
      ),
    );
  }
}

class AnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Analysis Page',
        style: TextStyle(fontSize: 24,color: Colors.black),
      ),
    );
  }
}

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Media Page',
        style: TextStyle(fontSize: 24,color: Colors.black),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24,color: Colors.black),
      ),
    );
  }
}