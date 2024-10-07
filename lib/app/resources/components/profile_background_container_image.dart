import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';
import '../assets/app_icons.dart';

class InfoHeaderBackground extends StatelessWidget {
  const InfoHeaderBackground({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundContainer(),
        Positioned(
          top: 25.h,
          left: 25.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    CupertinoIcons.back,
                    color: AppColors.white,
                    size: 30,
                  )),
              SizedBox(
                width: 90.w,
              ),
              Text(
                title,
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
            ],
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
      height: 175.h,
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
          scale: 2.3,
        ),
      ),
    );
  }
}

class ProfileBackgroundContainerImage extends StatelessWidget {
  const ProfileBackgroundContainerImage({super.key, required this.imageUrl, required this.name, required this.mail});
final String imageUrl;
final String name;
final String mail;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundContainer(), // Assuming you have this as a background widget
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
