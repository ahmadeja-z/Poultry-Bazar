import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomMediaBox extends StatelessWidget {
  const CustomMediaBox(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl});
  final String title;
  final String subTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(vertical: 5.h,),
      // height: 370.h,
      width: 350.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black),
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 256.h,
            width: 325.w,
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
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
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
                color: AppColors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
