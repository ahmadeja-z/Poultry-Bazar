import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
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
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const SizedBox(
              height: double.infinity,
            ),
            const ProfileBackgroundContainerImage(
                imageUrl:
                    'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                name: 'Name Here',
                mail: 'email123@gmail.com'),
            Positioned(
              top: 140.h,
              child: Container(
                width: 345.w,
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                padding: EdgeInsets.only(
                    top: 20.h, left: 20.w, right: 20.w, bottom: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, spreadRadius: 3, blurRadius: 5)
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.person_2_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'userProfile',
                        onTap: () {
                          Get.to(UserProfileProfile(),
                              transition: Transition.fade);
                        }),
                     Divider(
                      color: AppColors.grey.withOpacity(.35),
                    ),
                    CustomListTile(
                        leadingIcon: const Icon(
                          CupertinoIcons.bell,
                          color: AppColors.grey,
                        ),
                        text: 'notification',
                        onTap: () {
                          Get.to(const NotificationSettingProfile(),
                              transition: Transition.fade);
                        }),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.paid_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'subscriptionPlan',
                        onTap: () {}),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.quiz_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'faqs',
                        onTap: () {
                          Get.to(const FaqsProfile(),
                              transition: Transition.fade);
                        }),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.info_outline_rounded,
                          color: AppColors.grey,
                        ),
                        text: 'aboutUs',
                        onTap: () {
                          Get.to(const AboutUsProfile(),
                              transition: Transition.fade);
                        }),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.person_3_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'contactUs',
                        onTap: () {
                          Get.to(const ContactUsProfile(),
                              transition: Transition.fade);
                        }),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.help_outline_rounded,
                          color: AppColors.grey,
                        ),
                        text: 'help',
                        onTap: () {}),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.star_rate_outlined,
                          color: AppColors.grey,
                        ),
                        text: 'rateApp',
                        onTap: () {}),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.share,
                          color: AppColors.grey,
                        ),
                        text: 'shareApp',
                        onTap: () {}),
                     Divider(color: AppColors.grey.withOpacity(.35),),
                    CustomListTile(
                        leadingIcon: const Icon(
                          Icons.logout_rounded,
                          color: AppColors.primaryYellow,
                        ),
                        text: 'logOut',
                        onTap: () {}),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.leadingIcon,
      required this.text,
      required this.onTap});
  final Icon leadingIcon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.secondaryLightYellow.withOpacity(0.5),
      highlightColor: AppColors.primaryYellow.withOpacity(0.3),
      borderRadius: BorderRadius.circular(15.0),
      child: ListTile(
        splashColor: AppColors.secondaryLightYellow.withOpacity(0.5),
        onTap: onTap,
        leading: leadingIcon,
        minTileHeight: 22,
        title: Text(
          text.tr,
          style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.poppins),
        ),
      ),
    );
  }
}
