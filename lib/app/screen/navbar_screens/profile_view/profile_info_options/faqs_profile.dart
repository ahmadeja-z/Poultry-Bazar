import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';
import 'package:poultry/app/resources/components/profile_background_container_image.dart';

import '../../../../resources/app_colors/app_colors.dart';

class FaqsProfile extends StatelessWidget {
  const FaqsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          const InfoHeaderBackground(
            title: 'FAQs',
          ),
          Positioned(
            top: 150.h,
            child: SizedBox(height: 700.h,
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
                  shrinkWrap: true
                  ,
                  children: [
                    const CustomExpansionTile(question: 'question1', answer: 'answer1'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question2', answer: 'answer2'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question3', answer: 'answer3'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question4', answer: 'answer4'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question5', answer: 'answer5'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question6', answer: 'answer6'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question7', answer: 'answer7'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question8', answer: 'answer8'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question9', answer: 'answer8'),
                    SizedBox(
                      height: 13.h,
                    ),
                    const CustomExpansionTile(question: 'question10', answer: 'answer10'),
                    SizedBox(
                      height: 13.h,
                    ),
                    Text('stillStuck'.tr,style: TextStyle(color: AppColors.black,fontSize: 14.sp,fontWeight: FontWeight.bold,fontFamily: AppFonts.poppins),),
                    SizedBox(height: 20.h,),
                    GradientButton(
                      circularRadius: 20,
                      buttonTitle: 'sendMessage', onTap: (){} , gradientColor: AppColors.primaryGradient,)
                  ],
                ),
              ),
            ),
          ),
        ],
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
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
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
