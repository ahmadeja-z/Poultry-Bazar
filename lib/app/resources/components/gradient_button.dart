

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.buttonTitle, required this.onTap, required this.gradientColor, this.height=40,  this.width=255,

  });
  final String buttonTitle;
  final VoidCallback onTap;
  final List<Color> gradientColor;
  final int height;
  final int width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      margin: EdgeInsets.symmetric(horizontal: 50.w),
        padding: EdgeInsets.symmetric(vertical: 9.h),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10.r),
          gradient: LinearGradient(
              colors: gradientColor,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFonts.poppins,
                    fontSize: 15.sp,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
