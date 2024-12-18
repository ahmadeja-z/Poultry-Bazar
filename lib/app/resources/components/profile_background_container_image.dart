import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';
import '../assets/app_icons.dart';

class InfoHeaderBackground extends StatelessWidget {
  const InfoHeaderBackground({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const BackgroundContainer(),
        Positioned(
          top: 30.h,
          child: Text(
            title.tr,
            style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontWeight: FontWeight.w600,
                fontSize: 20.sp),
          ),
        )
      ],
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: AppColors.primaryGradient,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          AppIcons.henIcon,
          scale: 1.9,
        ),
      ),
    );
  }
}

class ProfileBackgroundContainerImage extends StatelessWidget {
  const ProfileBackgroundContainerImage(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.mail});
  final String imageUrl;
  final String name;
  final String mail;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundContainer(), // Assuming you have this as a background widget
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.blue,
                radius: 35.r,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      fontFamily: AppFonts.poppins,
                    ),
                  ),
                  Text(
                    mail,
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: AppColors.white, // Adjust the text color
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ScreenBackGround extends StatelessWidget {
  const ScreenBackGround({
    super.key,
    required this.title,

  });

  final String title;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoHeaderBackground(
          title: title,
        ),
        Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
