import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/components/custom_textField_profile.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';
import 'package:poultry/app/screen_controller/profile_controller/user_profile_profile_controller.dart';
import '../../../../resources/app_colors/app_colors.dart';
import '../../../../resources/assets/app_fonts.dart';
import '../../../../resources/components/profile_background_container_image.dart';

class UserProfileProfile extends StatelessWidget {
  UserProfileProfile({super.key});

  final TextStyle _textStyle = TextStyle(
    fontFamily: AppFonts.Lato,
    fontWeight: FontWeight.bold,
    fontSize: 13.sp,
    color: AppColors.textDarkColor,
  );

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserProfileController());

    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjusts layout when keyboard appears
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

             ScreenBackGround(
              title: 'userProfile',
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 23.h,),
                  Row(
                    children: [
                      SizedBox(width: 10.w,),
                      IconButton(
                          splashColor: AppColors.secondaryLightYellow.withOpacity(0.5), // Color of the splash effect
                          highlightColor: AppColors.primaryYellow.withOpacity(0.3),    // Color when the widget is pressed

                          onPressed: (){Get.back();}, icon: Icon(
                        CupertinoIcons.back,
                        color: AppColors.white,
                        size: 30,
                      )),
                    ],
                  ),
                  SizedBox(height: 72.h,),
              
                  Container(
                    width: 345.w,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        Text(
                          'userName'.tr,
                          style: _textStyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomProfileTextField(
                          controller: controller.userNameController.value,
                          hintText: 'nameHere',
                          currentFocus: controller.userNameFocus.value,
                          nextNode: controller.emailFocus.value,
                        ),
                        SizedBox(height: Get.height * 0.03),
                        Text('email'.tr, style: _textStyle),
                        SizedBox(height: 5.h),
                        CustomProfileTextField(
                          controller: controller.emailController.value,
                          hintText: 'emailHere',
                          currentFocus: controller.emailFocus.value,
                          nextNode: controller.addressFocus.value,
                          inputType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: Get.height * 0.03),
                        Text('address'.tr, style: _textStyle),
                        SizedBox(height: 5.h),
                        CustomProfileTextField(
                          controller: controller.addressController.value,
                          hintText: 'addressHere',
                          currentFocus: controller.addressFocus.value,
                          nextNode: controller.passwordFocus.value,
                        ),
                        SizedBox(height: Get.height * 0.03),
                        Text('password'.tr, style: _textStyle),
                        SizedBox(height: 5.h),
                        CustomProfileTextField(
                          controller: controller.passwordController.value,
                          hintText: 'passwordHere',
                          currentFocus: controller.passwordFocus.value,
                        ),
                        SizedBox(height: 50.h),
                        GradientButton(
                          buttonTitle: 'update',
                          onTap: () {},
                          gradientColor: AppColors.primaryGradient,
                          width: 320,
                          circularRadius:500 ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 94.h,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primaryYellow),
                ),
                height: 94.h,
                width: 94.h,
                child: CachedNetworkImage(
                  imageUrl:
                  'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return const Center(
                      child: SpinKitCircle(
                        color: AppColors.primaryYellow,
                      ),
                    );
                  },
                  errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline, color: Colors.red),
                ),
              ),
            ),
            Positioned(
              top: 178.h,
              child: Container(
                height: 23.h,
                width: 23.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(.2),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
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
      ),
    );
  }
}
