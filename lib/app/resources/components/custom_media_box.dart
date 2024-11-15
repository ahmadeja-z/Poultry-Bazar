import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomMediaBox extends StatelessWidget {
  const CustomMediaBox(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl,
      this.onBoxTap,
      required this.by,
      required this.date});
  final String title;
  final String subTitle;
  final String imageUrl;
  final VoidCallback? onBoxTap;
  final String by;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        InkWell(
          onTap: onBoxTap,
          splashColor: AppColors.secondaryLightYellow
              .withOpacity(0.5), // Color of the splash effect
          highlightColor: AppColors.primaryYellow
              .withOpacity(0.3), // Color when the widget is pressed
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            // margin: EdgeInsets.symmetric(vertical: 5.h,),
            // height: 370.h,
            width: 350.w,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 256.h,
                  width: 330.w,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10).w),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return const Center(
                        child: SpinKitCircle(
                          color: AppColors.primaryYellow,
                        ),
                      );
                    },
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: Get.width * 0.17,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: AppColors.primaryYellow.withOpacity(.15)),
                  child: Center(
                      child: Text(
                    'subCategory'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFonts.inter,
                        color: AppColors.primaryYellow,
                        fontSize: 7.sp),
                  )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 13.sp,
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.poppins,
                      fontSize: 11.sp,
                      color: AppColors.textMediaSubTitleColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) {
                          return const Center(
                            child: SpinKitCircle(
                              color: AppColors.primaryYellow,
                              size: 10,
                            ),
                          );
                        },
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error_outline,
                          size: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: Get.width * 0.19),
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        by.toString(),
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey,
                          fontFamily: AppFonts.poppins,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      date.toString(),
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black.withOpacity(.7),
                        fontFamily: AppFonts.poppins,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.015,
        ),
      ],
    );
  }
}
