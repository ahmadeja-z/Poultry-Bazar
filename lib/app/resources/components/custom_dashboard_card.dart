import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/components/rates_background_container.dart';

import '../../screen_controller/dashboard_controller/dashboard_controller.dart';
import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';
import 'custom_option_widget.dart';

class CustomCardWidget extends StatelessWidget {
  final List<City> allCities;
  final List<City> selectedCities;
  final Function(City) onCitySelected;
  final VoidCallback onViewMore;
  final String cardTitle;
  final String date;

  const CustomCardWidget({
    Key? key,
    required this.allCities,
    required this.selectedCities,
    required this.onCitySelected,
    required this.onViewMore, required this.cardTitle, required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      width: 360.w,
      padding: EdgeInsets.all(15.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(.2),
            spreadRadius: 2,
            offset: Offset(0, 3),
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardTitle.tr,
                style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: AppColors.grey.withOpacity(.6),
                ),
              ),
              buildPopupMenuButton(),
            ],
          ),
          SizedBox(height: 5.h),
          Wrap(
            children: List.generate(
              selectedCities.length,
                  (index) {
                return RatesBackgroundContainer(
                  cityName: selectedCities[index].name,
                  rate: selectedCities[index].rate,
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontSize: 12.sp,
                  color: AppColors.grey.withOpacity(.6),
                ),
              ),
              CustomOptionWidget(title: 'View More', onTap: onViewMore),
            ],
          )
        ],
      ),
    ),);
  }

  Widget buildPopupMenuButton() {
    return PopupMenuButton(
      constraints: BoxConstraints(maxWidth: 135.w),
      enableFeedback: false,
      color: AppColors.white,
      shadowColor: Colors.black,
      elevation: 10,
      offset: Offset(-10, 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            enabled: false,
            value: null,
            child: Container(
              width: 135.w,
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  height: 4,
                  color: Colors.transparent,
                ),
                shrinkWrap: true,
                itemCount: allCities.length,
                itemBuilder: (context, index) {
                  City city = allCities[index];
                  return GestureDetector(
                    onTap: () => onCitySelected(city),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(() => selectedCities.contains(city)
                            ? Icon(
                          Icons.check_box,
                          size: 20.w,
                          color: AppColors.primaryYellow,

                        )
                            : Icon(
                          Icons.check_box_outline_blank,
                          size: 20.w,
                          color: AppColors.primaryYellow,
                        )),
                        SizedBox(width: 8.w),
                        ConstrainedBox(

                          constraints: BoxConstraints(maxWidth: 85.h),
                          child: Text(
                            city.name,

                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: AppFonts.inter,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ];
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey.withOpacity(.5)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'location'.tr,
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.poppins,
                color: AppColors.grey.withOpacity(.5),
              ),
            ),
            SizedBox(width: 3.w),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.grey,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}