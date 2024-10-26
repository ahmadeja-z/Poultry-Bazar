import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';

import '../../screen_controller/dashboard_controller/dashboard_controller.dart';


class CustomPopupMenuButton extends StatelessWidget {
  final List<City> allCities;
  final RxList<City> selectedCities;
  final Function(City) onCitySelected;

  CustomPopupMenuButton({
    Key? key,
    required this.allCities,
    required this.selectedCities,
    required this.onCitySelected,
  }) : super(key: key);

  Widget buildPopupMenuButton() {
    return PopupMenuButton(
      constraints: BoxConstraints(maxWidth: 135.w),
      enableFeedback: false,
      color: Colors.white,
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
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
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
          border: Border.all(color: Colors.grey.withOpacity(.5)),
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
                color: Colors.grey.withOpacity(.5),
              ),
            ),
            SizedBox(width: 3.w),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPopupMenuButton();
  }
}
