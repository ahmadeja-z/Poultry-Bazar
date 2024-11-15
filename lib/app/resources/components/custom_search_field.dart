import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomSearchTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const CustomSearchTextField({
    super.key,
    required this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 297.w,
      child: TextField(
        cursorColor: AppColors.primaryYellow,
        onChanged: onChanged,
        controller: controller,
        style: TextStyle(
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          fontSize: 13.sp,
          color: AppColors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,color:Color(0xFF7D8FAB) ,),
          hintText: 'searchServices'.tr,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          hintStyle: TextStyle(
            fontFamily: AppFonts.inter,
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: const Color(0xFF7D8FAB),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.grey.withOpacity(.35)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.primaryYellow),
          ),
        ),
      ),
    );
  }
}