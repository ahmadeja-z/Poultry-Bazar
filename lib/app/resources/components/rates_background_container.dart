import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';
import '../assets/app_icons.dart';

class RatesBackgroundImage extends StatelessWidget {
  const RatesBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 165.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.primaryYellow.withOpacity(.25)
      ),
      child: Align(
          alignment:Alignment.bottomRight,child: Image.asset(AppIcons.henIcon,scale: 4,)),
    );
  }
}
class RatesBackgroundContainer extends StatelessWidget {
  const RatesBackgroundContainer({super.key, required this.cityName, required this.rate});
final String cityName;
final String rate;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 91.h,
      width: Get.width*.38,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.grey.withOpacity(.9))
      ),
      child:Stack(alignment: Alignment.centerLeft,
        children: [
          RatesBackgroundImage(),
          Row(
            children: [
              SizedBox(width: 15.w,),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: Get.width*.34,),
                    child: Text(cityName,style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C5D53),
                      fontFamily: AppFonts.poppins,
                    
                    ),overflow: TextOverflow.ellipsis,),
                  ),
                  Text(rate,style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFE9843),
                    fontFamily: AppFonts.poppins,

                  ),),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}
