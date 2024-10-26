import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomOptionWidget extends StatelessWidget {
  const CustomOptionWidget({super.key,  this.haveIcon=false, required this.title,  this.onTap});
final bool haveIcon;
final String title;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.secondaryLightYellow.withOpacity(0.5), // Color of the splash effect
      highlightColor: AppColors.primaryYellow.withOpacity(0.3),    // Color when the widget is pressed
      borderRadius: BorderRadius.circular(15.0),
      onTap: onTap,
      child: Container(
        child: haveIcon == true?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.tr,
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
        ):

        Center(
          child: Text(
            title.tr,
            style: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w400,
              fontFamily: AppFonts.poppins,
              color: AppColors.grey.withOpacity(.5),
            ),
          ),
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
    );
  }
}
