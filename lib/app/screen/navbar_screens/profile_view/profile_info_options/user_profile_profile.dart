import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/components/custom_textField_profile.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';
import 'package:poultry/app/screen_controller/profile_controller/user_profile_profile_controller.dart';

import '../../../../resources/app_colors/app_colors.dart';
import '../../../../resources/assets/app_fonts.dart';
import '../../../../resources/components/profile_background_container_image.dart';

class UserProfileProfile extends StatelessWidget {
   UserProfileProfile({super.key});
  final TextStyle _textStyle =  TextStyle(
      fontFamily: AppFonts.poppins,
      fontWeight: FontWeight.bold,
      fontSize: 13.sp,
      color: AppColors.black);
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(UserProfileController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          const InfoHeaderBackground(
            title: 'userProfile',
          ),
          Positioned(
            top: 150.h,
            child: SizedBox(
              height: 570.h,
              child: Container(
                width: 330.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 70.h,
                    ),
                    Text(
                      'userName'.tr,
                      style: _textStyle,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomProfileTextField(controller: controller.userNameController.value, hintText: 'nameHere',currentFocus: controller.userNameFocus.value,nextNode: controller.emailFocus.value,),
                    SizedBox(height: 10.h,),
                    Text('email'.tr,style: _textStyle,),
                    SizedBox(height: 5.h,),
                    CustomProfileTextField(controller: controller.emailController.value, hintText:'emailHere',currentFocus: controller.emailFocus.value,nextNode: controller.addressFocus.value,inputType: TextInputType.emailAddress,),
                    SizedBox(height: 10.h,),
                    Text('address'.tr,style: _textStyle,),
                    SizedBox(height: 5.h,),
                    CustomProfileTextField(controller: controller.addressController.value, hintText: 'addressHere',currentFocus: controller.addressFocus.value,nextNode: controller.passwordFocus.value,),
                    SizedBox(height: 10.h,),
                    Text('password'.tr,style: _textStyle,),
                    SizedBox(height: 5.h,),
                    CustomProfileTextField(controller: controller.passwordController.value, hintText: 'passwordHere',currentFocus: controller.passwordFocus.value,),
                    SizedBox(height: 50.h,),
                    GradientButton(buttonTitle: 'update', onTap: (){}, gradientColor: AppColors.primaryGradient,width: 300,circularRadius: 20,)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            child: CircleAvatar(
              radius: 50.r,
              backgroundImage: NetworkImage(
                'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
          ),
          Positioned(
            top: 185.h,
            child: Container(
              height: 25.h,
              width: 25.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(.4),
                        blurRadius: 2,
                        spreadRadius: 2)
                  ]),
              child: Center(
                child: Icon(
                  CupertinoIcons.photo,
                  size: 15.w,
                  color: AppColors.primaryYellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
