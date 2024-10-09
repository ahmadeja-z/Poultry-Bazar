import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
    required this.gradientColor,
    this.height = 40,
    this.width = 255,
    this.circularRadius=5
  });

  final String buttonTitle;
  final VoidCallback onTap;
  final List<Color> gradientColor;
  final int height;
  final int width;
  final int circularRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        height: height.h, // Set the height using ScreenUtil
        width: width.w, // Set the width using ScreenUtil
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularRadius.r),
          gradient: LinearGradient(

            colors: gradientColor,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              offset: Offset(0, 2), // Offset for the shadow
              blurRadius: 4, // Blur radius of the shadow
              spreadRadius: 1, // Spread radius of the shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonTitle.tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: AppFonts.poppins,
              fontSize: 15.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
