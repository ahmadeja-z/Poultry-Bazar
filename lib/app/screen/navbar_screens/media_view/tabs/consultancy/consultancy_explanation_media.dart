import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_appbar.dart';
import 'package:poultry/app/resources/components/gradient_button.dart';

class ConsultancyExplanationMedia extends StatelessWidget {
  const ConsultancyExplanationMedia({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.heroTag, required this.by, required this.date, // Add the heroTag parameter
  });

  final String title;
  final String description;
  final String imageUrl;
  final String heroTag; // Store
  final String by;
  final String date;// heroTag

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        trailing: const Icon(
          Icons.share,
          color: AppColors.grey,
        ),
        title: Text(
          'Blogs',
          style: TextStyle(fontSize: 17.sp, color: AppColors.primaryYellow),
        ),
        leading: IconButton(
          splashColor: AppColors.secondaryLightYellow.withOpacity(0.5),
          highlightColor: AppColors.primaryYellow.withOpacity(0.3),
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: AppColors.primaryYellow,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                // transitionOnUserGestures: true,
                tag: heroTag, // Use heroTag
                child: Container(
                  width: Get.width * 0.95,
                  height: Get.height * 0.44,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: AppColors.black),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return const Center(
                        child: SpinKitCircle(
                          color: AppColors.primaryYellow,
                        ),
                      );
                    },
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Container(width: Get.width*0.17,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.primaryYellow.withOpacity(.25)
                    ),
                    child: Center(child: Text('subCategory'.tr,style: TextStyle(fontWeight: FontWeight.w600,fontFamily: AppFonts.inter,color: AppColors.primaryYellow,fontSize: 7.sp),)),
                  ),
                ],
              ),
              SizedBox(height: 8.h,),
              Row(

                children: [


                  Container(
                    height: 25.h,
                    width: 25.w,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                    BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return const Center(
                          child: SpinKitCircle(
                            color: AppColors.primaryYellow,
                          ),
                        );
                      },
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: Get.width*0.18),
                    child: Text(maxLines: 1,overflow: TextOverflow.ellipsis,
                      by.toString(),
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey,
                        fontFamily: AppFonts.poppins,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    date.toString(),
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.grey,
                      fontFamily: AppFonts.poppins,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: Get.width * 0.8,
                  maxWidth: Get.width * 0.9,
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFonts.poppins),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.poppins),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              GradientButton(
                  width: 300,
                  circularRadius: 20,
                  buttonTitle: 'Share',
                  onTap: () {},
                  gradientColor: AppColors.primaryGradient),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
