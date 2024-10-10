import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_navbar.dart';

import 'app/resources/components/profile_background_container_image.dart';

class PractiseWidget extends StatefulWidget {
  const PractiseWidget({Key? key}) : super(key: key);

  @override
  _PractiseWidgetState createState() => _PractiseWidgetState();
}

class _PractiseWidgetState extends State<PractiseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        height: 121.h,
        width: 350.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          borderRadius: BorderRadius.circular(15.w),
        ),
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 127.w,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15).w),
              child: CachedNetworkImage(
                imageUrl:
                    'https://images.pexels.com/photos/1152659/pexels-photo-1152659.jpeg?auto=compress&cs=tinysrgb&w=600',
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
            SizedBox(
              width: 5.h,
            ),
            Container(width: 190.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 12.sp,
                        fontFamily: AppFonts.poppins,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Vitae amet vestibulum tortor laoreet diam. Vel facilisis pretium id scelerisque nec purus. Tristique elementum massa massa rhoncus. Purus eget felis nulla ac nulla suscipit a venenatis mollis. Commodo pretium vel facilisis sit.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.poppins,
                        fontSize: 10.sp,
                        color: AppColors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('By: Ali Raza',style: TextStyle(fontSize:9.sp,fontWeight: FontWeight.w600,color: AppColors.black,fontFamily: AppFonts.poppins ),),
                      Text('10 Oct,2024',style: TextStyle(fontSize:9.sp,fontWeight: FontWeight.w600,color: AppColors.black,fontFamily: AppFonts.poppins ),),
                    ],
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
