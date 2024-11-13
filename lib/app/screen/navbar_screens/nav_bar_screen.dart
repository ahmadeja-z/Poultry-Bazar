import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';


import '../../screen_controller/nav_bar_controller.dart';

class NavbarScreen extends StatefulWidget {

  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  final navController = Get.put(NavController());

  List<String> title = ['Dashboard', 'Analysis', 'Media', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Obx(
              () => navController.pages[navController.selectedIndex.value])),
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
            BottomNavigationBarItem(
              backgroundColor: AppColors.white,
              icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        AppColors.grey.withOpacity(.3),
                        AppColors.grey.withOpacity(.6),
                        AppColors.grey
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Icon(Icons.dashboard)),
              label: 'Dashboard',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      AppColors.primaryYellow,
                      AppColors.primaryYellow,
                      AppColors.darkPrimaryYellow
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Icon(
                  Icons.dashboard,
                  size: 28.h,
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.white,
              icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        AppColors.grey.withOpacity(.3),
                        AppColors.grey.withOpacity(.6),
                        AppColors.grey
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Icon(Icons.pie_chart)),
              label: 'Analysis',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      AppColors.primaryYellow,
                      AppColors.primaryYellow,
                      AppColors.darkPrimaryYellow
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Icon(
                  Icons.pie_chart,
                  size: 28.h,
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.white,
              icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        AppColors.grey.withOpacity(.3),
                        AppColors.grey.withOpacity(.6),
                        AppColors.grey
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Icon(Icons.subscriptions_rounded)),
              label: 'Media',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      AppColors.primaryYellow,
                      AppColors.primaryYellow,
                      AppColors.darkPrimaryYellow
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        AppColors.grey.withOpacity(.3),
                        AppColors.grey.withOpacity(.6),
                        AppColors.grey
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: Icon(
                    Icons.subscriptions_rounded,
                    size: 28.h,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.white,
              icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        AppColors.grey.withOpacity(.3),
                        AppColors.grey.withOpacity(.6),
                        AppColors.grey
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Icon(Icons.person)),
              label: 'Profile',
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      AppColors.primaryYellow,
                      AppColors.primaryYellow,
                      AppColors.darkPrimaryYellow
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Icon(
                  Icons.person,
                  size: 28.h,
                ),
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
