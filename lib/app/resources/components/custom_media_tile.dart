import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomMediaTile extends StatelessWidget {
  CustomMediaTile(
      {super.key,
      required this.title,
      required this.description,
      this.by = '',
      this.date = '',
      required this.imageUrl,
      this.onTileTap});
  final String title;
  final String imageUrl;
  final String description;
  final String? by;
  final String? date;
  final VoidCallback? onTileTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.01,
        ),
        InkWell(
          onTap: onTileTap,
          splashColor: AppColors.secondaryLightYellow
              .withOpacity(0.5), // Color of the splash effect
          highlightColor: AppColors.primaryYellow
              .withOpacity(0.3), // Color when the widget is pressed
          borderRadius: BorderRadius.circular(15.0.w),
          child: Container(
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(
            //   vertical: 8.h,
            // ),
            height: Get.height * 0.13,
            width: Get.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.32,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15).w),
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
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: Get.width * 0.5, minHeight: Get.height * 0.2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.poppins,
                            fontSize: 11.sp,
                            color: AppColors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      date != null && by != null?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              date.toString(),
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w300,
                                color: AppColors.grey,
                                fontFamily: AppFonts.poppins,
                              ),
                            ),
                            Text(
                              'By: $by',
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                                fontFamily: AppFonts.poppins,
                              ),
                            ),
                          ],
                        ):SizedBox.shrink(),
                      Text(
                        description,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.poppins,
                            fontSize: 8.sp,
                            color: AppColors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
