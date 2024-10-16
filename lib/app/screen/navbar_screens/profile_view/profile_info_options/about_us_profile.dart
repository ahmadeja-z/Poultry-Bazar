import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/profile_background_container_image.dart';

import '../../../../resources/app_colors/app_colors.dart';

class AboutUsProfile extends StatelessWidget {
  const AboutUsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
        SizedBox(height: double.infinity,),
             ScreenBackGround(
              title: 'About Us',
            ),
            Column(
              children: [
                SizedBox(height: 23.h,),
                Row(
                  children: [
                    SizedBox(width: 10.h,),
                    IconButton(
                        splashColor: AppColors.secondaryLightYellow.withOpacity(0.5), // Color of the splash effect
                        highlightColor: AppColors.primaryYellow.withOpacity(0.3),    // Color when the widget is pressed
        
                        onPressed: (){Get.back();}, icon: Icon(
                      CupertinoIcons.back,
                      color: AppColors.white,
                      size: 30,
                    )),
                  ],
                ),
                SizedBox(height: 72.h,),
                Container(
                  // height: Get.height*7,
                  width: 343.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                    boxShadow:const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomText(
                          title: 'marketRate',
                          about: 'marketRateDescription',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomText(
                          title: 'dailyChickenNotification',
                          about: 'dailyChickenNotificationDescription',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomText(
                          title: 'aiPoweredSearchBoxRates',
                          about: 'aiPoweredSearchBoxRatesDescription',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomText(
                          title: 'historicalCharts',
                          about: 'historicalChartsDescription',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomText(
                          title: 'customizedAlert',
                          about: 'customizedAlertDescription',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, required this.about});
  final String title;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 310.h),
          child: Text(
            title.tr,
            style: TextStyle(
              fontFamily: AppFonts.poppins,
              fontSize: 13.sp,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300.h),
          child: Text(
            about.tr,
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: AppFonts.poppins,
              fontSize: 11.sp,
            ),
          ),
        ),
      ],
    );
  }
}
