import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomMediaTile extends StatelessWidget {
   CustomMediaTile(
      {super.key,
      required this.title,
      required this.description,
       this.by='',
       this.date='',
      required this.imageUrl});
  final String title;
  final String imageUrl;
  final String description;
   String? by;
   String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      height: 100.h,
      width: 310.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black),
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 85.h,
            width: 127.w,
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

          Container(
            height: 100.h,
            width: 170.w,
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
                // Text(
                //   'By:$by',
                //   style: TextStyle(
                //       fontSize: 9.sp,
                //       fontWeight: FontWeight.w600,
                //       color: AppColors.black,
                //       fontFamily: AppFonts.poppins),
                // ),
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
                Text(
                  date.toString(),
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      fontFamily: AppFonts.poppins),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
