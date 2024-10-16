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

class BlogsExplanationMedia extends StatelessWidget {
  const BlogsExplanationMedia({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.heroTag, // Add the heroTag parameter
  });

  final String title;
  final String description;
  final String imageUrl;
  final String heroTag; // Store heroTag

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
              SizedBox(
                height: 8.h,
              ),
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
