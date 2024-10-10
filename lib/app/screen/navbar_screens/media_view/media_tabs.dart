import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/blogs/blogs_media_view.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/diseases/diseases_media_view.dart';

import '../../../resources/app_colors/app_colors.dart';
import '../../../resources/assets/app_fonts.dart';

class MediaTabs extends StatelessWidget {
  MediaTabs({super.key});
  final List<Tab> mediaTabs = [
    Tab(
      text: 'Blogs',
    ),
    Tab(
      text: 'Diseases',
    ),
    Tab(
      text: 'Consultancy',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: mediaTabs.length,
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: SafeArea(
            child: Column(
              children: [
                TabBar(

                  labelStyle:  TextStyle(
                      fontSize: 13.sp,
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  tabs: mediaTabs,
                  dividerHeight: 1.h,
                  labelColor: AppColors.primaryYellow,
                  unselectedLabelColor: AppColors.grey,
                  indicatorColor: AppColors.secondaryLightYellow,
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                     BlogsMedia(),
                      DiseasesMedia(),
                      Center(
                        child: Text(
                          'Consultancy',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
