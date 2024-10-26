import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/screen_controller/dashboard_controller/dashboard_controller.dart';

import '../../../resources/assets/app_images.dart';
import '../../../resources/components/custom_graph.dart';
import '../../../resources/components/custom_option_widget.dart';
import '../../../resources/components/popUp_menu.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    final dashBoardController = Get.put(DashboardController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          AppImages.logoIcon,
          height: 35.17.h,
          width: 136,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15.h,),
              Container(padding: EdgeInsets.all(20),
                width: 352.w,
                height: 300.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.grey.withOpacity(.1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'rate'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: AppColors.black.withOpacity(.7),
                          fontFamily: AppFonts.poppins,
                          fontSize: 19.sp),
                    ),
                    Divider(),
                    SizedBox(height: 210.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: dashBoardController.allCities.length,
                        itemBuilder: (context, index) {
                          return CustomRow(
                              city: dashBoardController.allCities[index].name,
                              rate: dashBoardController.allCities[index].rate);
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Obx(
                    () {
                  return Container(
                    width: 360.w,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.black.withOpacity(.2),
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                              blurRadius: 4)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Activities',
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: AppFonts.poppins,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 12.h,
                                      width: 12.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.primaryYellow,
                                          borderRadius:
                                          BorderRadius.circular(4.r)),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Open Rate',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkGreen,
                                          fontFamily: AppFonts.poppins,
                                          fontSize: 10.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 12.h,
                                      width: 12.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.grey,
                                          borderRadius:
                                          BorderRadius.circular(4.r)),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Close Rate',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkGreen,
                                          fontFamily: AppFonts.poppins,
                                          fontSize: 10.sp),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [

                                PopupMenuButton<String>(
                                  color: Colors.white,
                                  shadowColor: Colors.black,
                                  elevation: 10,
                                  offset: Offset(-10, 25),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: CustomOptionWidget(
                                      haveIcon: true,
                                      title: dashBoardController.selectedType.isEmpty
                                          ? 'Select Year'
                                          : dashBoardController.selectedType
                                          .toString()),
                                  onSelected: (String value) {
                                    // Handle selection logic here (optional)
                                    dashBoardController.selectedType.value = value;
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return dashBoardController.calenderType
                                        .map((String type) {
                                      return PopupMenuItem<String>(
                                        height: 25,
                                        value: type,
                                        child: Text(
                                          type,
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: AppFonts.inter,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      );
                                    }).toList();
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15.h,),
                        CustomGraph()
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20.h,),

            ],
          ),
        ),
      )),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.city, required this.rate});
  final String city;
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              city,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: AppFonts.poppins,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black.withOpacity(.5)),
            ),
            Text(
              rate,
              style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: AppFonts.poppins,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black.withOpacity(.25)),
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}
