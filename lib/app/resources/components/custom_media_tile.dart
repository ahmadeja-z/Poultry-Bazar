import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomMediaTile extends StatelessWidget {
  CustomMediaTile(
      {super.key,
      required this.title,
      required this.description,
      this.by = '',
      this.date = '',
      required this.imageUrl,
      this.onTileTap});
  final String title;
  final String imageUrl;
  final String description;
  final String? by;
  final String? date;
  final VoidCallback? onTileTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.01,
        ),
        InkWell(
          onTap: onTileTap,
          splashColor: AppColors.secondaryLightYellow
              .withOpacity(0.5), // Color of the splash effect
          highlightColor: AppColors.primaryYellow
              .withOpacity(0.3), // Color when the widget is pressed
          borderRadius: BorderRadius.circular(15.0.w),
          child: Container(
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(
            //   vertical: 8.h,
            // ),
            height: Get.height * 0.13,
            width: Get.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.32,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15.w)),
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
                Spacer(),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: Get.width * 0.46, minHeight: Get.height * 0.2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(width: Get.width*0.17,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.primaryYellow.withOpacity(.25)
                      ),
                        child: Center(child: Text('subCategory'.tr,style: TextStyle(fontWeight: FontWeight.w600,fontFamily: AppFonts.inter,color: AppColors.primaryYellow,fontSize: 7.sp),)),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.poppins,
                            fontSize: 11.sp,
                            color: AppColors.black),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Text(
                        description,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.poppins,
                            fontSize: 8.sp,
                            color: AppColors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (date != null && by != null) Expanded(
                        child: Row(

                          children: [
                        
                        
                            Container(
                              height: Get.height * 0.08,
                              width: Get.width * 0.05,
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
                      ) else SizedBox.shrink(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
