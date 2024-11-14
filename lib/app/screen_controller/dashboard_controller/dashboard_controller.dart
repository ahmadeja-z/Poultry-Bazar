import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/app_colors/app_colors.dart';
import '../../resources/assets/app_fonts.dart';
import '../../utils/utils.dart';

class City {
  final String name;
  final String rate;

  City({
    required this.name,
    required this.rate,
  });

  // Override == operator to compare cities by name and rate
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is City && other.name == name && other.rate == rate;
  }

  // Override hashCode to be consistent with the == operator
  @override
  int get hashCode => name.hashCode ^ rate.hashCode;
}


class DashboardController extends GetxController {
  final Rx<City?> selectedCity = Rx<City?>(null);
  final RxList<City> allCities = <City>[
    City(name: 'City 1', rate: '15.00'),
    City(name: 'City 2', rate: '18.50'),
    City(name: 'Rawalpindi', rate: '20.00'),
    City(name: 'Lahore', rate: '22.50'),
    City(name: 'Islamabad', rate: '54.50'),
    City(name: 'Karachi', rate: '84.11'),
    City(name: 'Faisalabad', rate: '12.65'),
    City(name: 'Multan', rate: '73.32'),
    City(name: 'Quetta', rate: '86.50'),

  ].obs;
  final RxList<City> docRatesAllCities = <City>[
    City(name: 'Peshawar', rate: '322.0'),
    City(name: 'Quetta', rate: '633.50'),
    City(name: 'Sialkot', rate: '453.00'),
    City(name: 'Hyderabad', rate: '244.50'),
    City(name: 'Sukkur', rate: '54.50'),
    City(name: 'Gilgit', rate: '342.11'),
    City(name: 'Jhelum', rate: '123.65'),
    City(name: 'Sheikhupura', rate: '993.32'),
    City(name: 'Muzaffarabad', rate: '86.232'),

  ].obs;

  final RxList<City> docRatesSelectedCities = <City>[
    City(name: 'Peshawar', rate: '322.0'),
    City(name: 'Quetta', rate: '633.50'),
    City(name: 'Sialkot', rate: '453.00'),
    City(name: 'Hyderabad', rate: '244.50'),
  ].obs;
final RxString selectedType=''.obs;
  final RxList<City> selectedCities = <City>[
    City(name: 'City 1', rate: '15.00'),
    City(name: 'City 2', rate: '18.50'),
    City(name: 'Rawalpindi', rate: '20.00'),
    City(name: 'Lahore', rate: '22.50'),
  ].obs;
  void updateDocRatesCitySelection(City city) {

    if (docRatesSelectedCities.contains(city)) {

      docRatesSelectedCities.remove(city);
      print(docRatesSelectedCities);
    } else {

      docRatesSelectedCities.add(city);    print(selectedCities);
    }
  }
final RxList<String> calenderType=<String>['Year','Monthly','Week','Day'].obs;
  void updateCitySelection(City city) {

    if (selectedCities.contains(city)) {

      selectedCities.remove(city);
      print(selectedCities);
    } else {
      // Add the city if not already selected
      selectedCities.add(city);    print(selectedCities);    
    }
  }
  String formatDate(DateTime date) {
    // Define a list of month names for formatting
    const List<String> months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];

    // Format the date
    String day = date.day.toString().padLeft(2, '0'); // Ensures two-digit day
    String month = months[date.month - 1]; // Get the month name
    String year = date.year.toString(); // Get the year

    return '$day $month, $year';
  }


// Reusable dialog to show city selection
  // void showCustomCitySelectionDialog({
  //   required BuildContext context,
  //   required List<City> cities,
  //   required Function(City) onCitySelected,
  //   required Offset position,
  //   double width = 130,
  // }) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Stack(
  //         children: [
  //           Positioned(
  //             left: position.dx,
  //             top: position.dy,
  //             child: Material(
  //               borderRadius: BorderRadius.circular(15),
  //               child: Container(
  //                 clipBehavior: Clip.antiAlias,
  //                 width: width.w,
  //                 padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white ,
  //                   borderRadius: BorderRadius.circular(15.r),
  //                 ),
  //                 child: ListView.separated(
  //                   separatorBuilder: (context, index) => const Divider(
  //                     height: 5,
  //                     color: Colors.white,
  //                   ),
  //                   shrinkWrap: true,
  //                   itemCount: cities.length,
  //                   itemBuilder: (context, index) {
  //                     City city = cities[index]; // Use City object
  //                     return GestureDetector(
  //                       onTap: () {
  //
  //                         onCitySelected(city); // Pass the City object
  //
  //                       },
  //                       child: Row(
  //                         mainAxisSize: MainAxisSize.min,
  //                         children: [
  //                           Obx(() => selectedCities.contains(city)
  //                               ? Icon(
  //                             Icons.check_box,
  //                             size: 20.w,
  //                             color: AppColors.primaryYellow,
  //                           )
  //                               : Icon(
  //                             Icons.check_box_outline_blank,
  //                             size: 20.w,
  //                             color: AppColors.primaryYellow,
  //                           )),
  //                           SizedBox(width: 8.w),
  //                           Text(
  //                             city.name,
  //                             style: TextStyle(
  //                               fontSize: 12.sp,
  //                               fontFamily: AppFonts.inter,
  //                               fontWeight: FontWeight.w500,
  //                               color: Colors.black,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     );
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  //
  // // Usage example to show the dialog with a specific position
  // void openCitySelectionDialog(BuildContext context) {
  //   showCustomCitySelectionDialog(
  //     context: context,
  //     cities: allCities, // Pass the list of City objects
  //     onCitySelected: (City selectedCity) {
  //       updateCitySelection(selectedCity); // Toggle city selection
  //     },
  //     position: Offset(100.w, 150.h), // Custom position
  //     width: 150.w, // Custom width if needed
  //   );
  // }
}
