import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/app_colors/app_colors.dart';
import '../../resources/assets/app_fonts.dart';

class DashboardController extends GetxController {
  // All cities
  final RxList<String> allCities = <String>[
    'City 1',
    'City 2',
    'City 3',
    'City 4',
    'Rawalpindi',
    'Lahore',
    'Sargodha',
    'Faisalabad',
    'Multan'
  ].obs;

  // Selected cities
  final RxList<String> selectedCities = <String>[
    'City 1',
    'City 2',
    'City 3',
    'City 4'
  ].obs;

  void updateCitySelection(String city) {
    if (selectedCities.contains(city)) {
      selectedCities.remove(city);  // Remove the city if already selected
    } else {
      selectedCities.add(city);  // Add the city if it's not selected yet
    }
  }

  void showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(

          child: Container(
            padding: EdgeInsets.all(10.w),
            child: Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: allCities.length,
                itemBuilder: (context, index) {
                  String city = allCities[index];
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          updateCitySelection(city);
                        },
                        child: Obx(() => selectedCities.contains(city)
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
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        city,
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  );
                },
              );
            }),
          ),

        );
      },
    );
  }

}
