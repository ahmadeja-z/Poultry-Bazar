import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/utils/utils.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomProfileTextField extends StatelessWidget {
  const CustomProfileTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.currentFocus,
    this.nextNode,
    this.inputType,
  });

  final TextEditingController controller;
  final String hintText;
  final FocusNode? currentFocus;
  final FocusNode? nextNode;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        keyboardType: inputType,
        cursorColor: AppColors.primaryYellow,
        style: TextStyle(
          fontFamily: AppFonts.inter,
          color: AppColors.black,
          fontSize: 14.sp,
        ),
        decoration: InputDecoration(
          hintText: hintText.tr,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: AppColors.grey,
            fontFamily: AppFonts.inter,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          filled: true,
          fillColor: AppColors.grey.withOpacity(.2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColors.primaryYellow),
          ),
        ),
        onSubmitted: (value) {
          Utils.changeFocus(context, currentFocus!, nextNode!);
        },
      ),
    );
  }
}
