import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_appbar.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';

import '../../screen_controller/nav_bar_controller.dart';

class NavbarScreen extends StatelessWidget {
  final  navController = Get.put(NavController());
  final  blogController = Get.put(BlogsMediaController());
List<String> title=['Dashboard','Analysis','Media','Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppBar(
        onTrailingTap: (){blogController.changeLayout();},
          trailing: Icon(Icons.apps,color: AppColors.primaryYellow,),
          title:Obx(() => Text(title[navController.selectedIndex.value],style: TextStyle(fontSize: 17.sp,color: AppColors.primaryYellow),),)),
      body: Obx(() => navController.pages[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
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
              fontWeight: FontWeight.w700),
          items: [
            BottomNavigationBarItem(backgroundColor: AppColors.white,
              icon: const Icon(Icons.dashboard),
              label: 'Dashboard',
              activeIcon: Icon(
                Icons.dashboard,
                color: AppColors.primaryYellow,
                size: 25.h,
              ),
            ),
            BottomNavigationBarItem(backgroundColor: AppColors.white,
              icon: const Icon(Icons.pie_chart),
              label: 'Analysis',
              activeIcon: Icon(
                Icons.pie_chart,
                color: Colors.orange,
                size: 25.h,
              ),
            ),
            BottomNavigationBarItem(backgroundColor: AppColors.white,
              icon: const Icon(Icons.subscriptions_rounded),
              label: 'Media',
              activeIcon: Icon(
                Icons.subscriptions_rounded,
                color: Colors.orange,
                size: 28.h,
              ),
            ),
            BottomNavigationBarItem(backgroundColor: AppColors.white,
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
        ),
      ),
    );
  }
}

// Sample pages for each tab
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Dashboard Page',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

class AnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Analysis Page',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Media Page',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

