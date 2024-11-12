import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';
import 'package:poultry/app/resources/components/profile_background_container_image.dart';

import '../../../../resources/app_colors/app_colors.dart';

class FaqsProfile extends StatelessWidget {
  const FaqsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
             ScreenBackGround(
              title: 'FAQs',
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 23.h,),
                  Row(
                    children: [
                      SizedBox(width: 20.h,),
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
                    height: 650.h,
                    width: 343.w,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h
                    ),
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
                        const CustomExpansionTile(
                            question: 'question1', answer: 'answer1'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question2', answer: 'answer2'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question3', answer: 'answer3'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question4', answer: 'answer4'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question5', answer: 'answer5'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question6', answer: 'answer6'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question7', answer: 'answer7'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question8', answer: 'answer8'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question9', answer: 'answer8'),
                        SizedBox(
                          height: 13.h,
                        ),
                        const CustomExpansionTile(
                            question: 'question10', answer: 'answer10'),
                        SizedBox(
                          height: Get.height*0.03,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'stillStuck'.tr,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFonts.poppins),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GradientButton(
                          circularRadius: 500,
                          width: 320,
                          buttonTitle: 'sendMessage',
                          onTap: () {},
                          gradientColor: AppColors.primaryGradient,
                        ),
                        SizedBox(
                          height: 20.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: AppColors.grey.withOpacity(.2),
      iconColor: AppColors.black,
      collapsedShape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(.2))),
      // clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          borderSide: const BorderSide(color: Colors.transparent)),
      maintainState: false,
      backgroundColor: AppColors.primaryYellow.withOpacity(.4),
      title: Text(
        question.tr,
        style: TextStyle(
          fontFamily: AppFonts.poppins,
          color: AppColors.black.withOpacity(.5),
          fontWeight: FontWeight.w600,
          fontSize: 13.sp,
        ),
      ),
      // backgroundColor: AppColors.black, // Background color of the tile
      children: [
        Container(
          width: 300.w,
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(.5),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.r)),
          ),
          child: Text(
            answer.tr,
            style: TextStyle(
              fontFamily: AppFonts.poppins,
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
