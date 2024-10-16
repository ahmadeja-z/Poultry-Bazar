import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/assets/app_images.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/screen_controller/dashboard_controller/dashboard_controller.dart';

import '../../../resources/app_colors/app_colors.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImages.logoIcon,
                    height: 35.17.h,
                    width: 136,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.primaryYellow),
                    ),
                    height: 32.h,
                    width: 32.h,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return const Center(
                          child: SpinKitCircle(
                            size: 25,
                            color: AppColors.primaryYellow,
                          ),
                        );
                      },
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error_outline, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360.w,
              height: 288.h,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(.2),
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                        blurRadius: 4)
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'madniUpdates'.tr,
                        style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            color: AppColors.grey.withOpacity(.5)),
                      ),
              GestureDetector(
                onTap: () {
                 controller. showCitySelectionDialog(context,); // Show dialog on button press
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'location'.tr, // Localized string for location
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.poppins,
                          color: AppColors.grey.withOpacity(.5),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.grey.withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
