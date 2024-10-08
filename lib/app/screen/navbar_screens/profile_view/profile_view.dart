import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_navbar.dart';
import 'package:poultry/app/resources/components/profile_background_container_image.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_info_options/about_us_profile.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_info_options/contact_us_profile.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_info_options/faqs_profile.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_info_options/notification_setting_profile.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_info_options/user_profile_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height:double.infinity,
          ),
          ProfileBackgroundContainerImage(
              imageUrl:
                  'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              name: 'Name Here',
              mail: 'email123@gmail.com'),
          Positioned(
            top: 150.h,
            child: Container(
             width: 300.w,
              padding: EdgeInsets.only(
                  top: 20.h, left: 20.w, right: 20.w, bottom: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 3, blurRadius: 5)
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomRow(
                        leadingIcon: Icon(
                          CupertinoIcons.person,
                          color: AppColors.grey,
                        ),
                        text: 'userProfile',
                        onTap: () {Get.to(UserProfileProfile(),transition: Transition.fade);}),
                    Divider(
                      color: AppColors.grey,
                    ),
                    CustomRow(
                        leadingIcon: Icon(
                          CupertinoIcons.bell,
                          color: AppColors.grey,
                        ),
                        text: 'notification',
                        onTap: () {Get.to(NotificationSettingProfile(),
                        transition: Transition.fade);}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.paid_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'subscriptionPlan',
                        onTap: () {}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.quiz_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'faqs',
                        onTap: () {Get.to(FaqsProfile(),transition: Transition.fade);}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.info_outline_rounded,
                          color: AppColors.grey,
                        ),
                        text: 'aboutUs',
                        onTap: () {Get.to(AboutUsProfile(),
                        transition: Transition.fade);}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.person_3_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'contactUs',
                        onTap: () {Get.to(ContactUsProfile(),transition: Transition.fade);}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.help_outline_rounded,
                          color: AppColors.grey,
                        ),
                        text: 'help',
                        onTap: () {}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.star_rate_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'rateApp',
                        onTap: () {}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.share,
                          color: AppColors.grey,
                        ),
                        text: 'shareApp',
                        onTap: () {}),
                    Divider(color: AppColors.grey),
                    CustomRow(
                        leadingIcon: Icon(
                          Icons.logout_rounded,
                          color: AppColors.primaryYellow,
                        ),
                        text: 'logOut',
                        onTap: () {}),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow(
      {super.key,
      required this.leadingIcon,
      required this.text,
      required this.onTap});
  final Icon leadingIcon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            leadingIcon,
            SizedBox(
              width: 8.w,
            ),
            Text(
              text.tr,
              style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.poppins),
            )
          ],
        ),
      ),
    );
  }
}
