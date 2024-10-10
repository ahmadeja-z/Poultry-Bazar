import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';
import 'package:poultry/app/screen_controller/profile_controller/contactUs_profile_controller.dart';

import '../../../../resources/app_colors/app_colors.dart';
import '../../../../resources/components/custom_textField_profile.dart';
import '../../../../resources/components/profile_background_container_image.dart';

class ContactUsProfile extends StatelessWidget {
  const ContactUsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactUsController());
    final TextStyle textStyle = TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.bold,
        color: AppColors.black);

    return Scaffold(
      body: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            const SizedBox(
              height: double.infinity,
            ),
            const InfoHeaderBackground(
              title: 'contactUs',
            ),
            Positioned(
              top: 150.h,
              child: SizedBox(height: 520.h,
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'subject'.tr,
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomProfileTextField(
                          controller: controller.subjectController.value,
                          hintText: 'subjectHere',
                          currentFocus: controller.subjectFocus.value,
                          nextNode: controller.emailFocus.value,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'email'.tr,
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomProfileTextField(
                          inputType: TextInputType.emailAddress,
                          controller: controller.emailController.value,
                          hintText: 'emailHere',
                          currentFocus: controller.emailFocus.value,
                          nextNode: controller.messageFocus.value,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'yourMessage'.tr,
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          height: 174.h,
                          width: 295.w,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            cursorColor: AppColors.primaryYellow,
                            focusNode: controller.messageFocus.value,
                            maxLines: 7,
                            style: TextStyle(
                                    
                                fontFamily: AppFonts.poppins,
                                color: AppColors.black,
                                fontSize: 14.sp),
                            controller: controller.messageController.value,
                            decoration: InputDecoration(
                              hintText: 'yourMessageHere'.tr,
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.grey,
                                  fontFamily: AppFonts.poppins,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 10.w),
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        GradientButton(
                            circularRadius: 20,
                            width: 300,
                            buttonTitle: 'sendMessage',
                            onTap: () {},
                            gradientColor: AppColors.primaryGradient)
                      ],
                    ),
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
