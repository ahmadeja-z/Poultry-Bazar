import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/assets/app_icons.dart';
import 'package:poultry/app/resources/assets/app_images.dart';
import 'package:poultry/app/resources/components/custom_dashboard_card.dart';
import 'package:poultry/app/resources/components/custom_graph.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_option_widget.dart';
import 'package:poultry/app/resources/components/rates_background_container.dart';
import 'package:poultry/app/screen/notifications/tabs_notification_screen.dart';
import 'package:poultry/app/screen_controller/dashboard_controller/dashboard_controller.dart';

import '../../../resources/app_colors/app_colors.dart';
import '../../../resources/components/popUp_menu.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(

        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AppImages.logoIcon,
                          height: 35.17.h,
                          width: 136.w,
                        ),
                        Row(
                          children: [

                             InkWell(
                               onTap: (){Get.to(TabNotificationScreen(),transition: Transition.fade);},
                                 splashColor: AppColors.secondaryLightYellow
                                     .withOpacity(0.5), // Color of the splash effect
                                 highlightColor: AppColors.primaryYellow
                                     .withOpacity(0.3), // Color when the widget is pressed
                                 child: Image.asset(AppIcons.bellIcon ,scale: 1.7,)),
                            SizedBox(width: 15.w,),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.grey,width: 2),
                              ),
                              height: 35.h,
                              width: 35.w,
                              child: CachedNetworkImage(
                                imageUrl:
                                'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                fit: BoxFit.cover,
                                placeholder: (context, url) {
                                  return const Center(
                                    child: SpinKitCircle(
                                      size: 25,
                                      color: AppColors.primaryYellow,
                                    ),
                                  );
                                },
                                errorWidget: (context, url, error) =>
                                const Icon(Icons.error_outline, color: Colors.red),
                              ),
                            ),
                            SizedBox(width: 10.w,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomCardWidget(
                      allCities: controller.allCities,
                      selectedCities: controller.selectedCities,
                      onCitySelected: (city) =>
                          controller.updateCitySelection(city),
                      onViewMore: () {},
                      cardTitle: 'madniUpdates',
                      date: controller.formatDate(DateTime.now()),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomCardWidget(
                      allCities: controller.docRatesAllCities,
                      selectedCities: controller.docRatesSelectedCities,
                      onCitySelected: (city) =>
                          controller.updateDocRatesCitySelection(city),
                      onViewMore: () {},
                      cardTitle: 'docRates',
                      date: controller.formatDate(DateTime.now()),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            width: 3.w,
                                          ),
                                          Text(
                                            'useRates'.tr,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.darkGreen,
                                                fontFamily: AppFonts.poppins,
                                                fontSize: 8.sp),
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
                                            width: 3.w,
                                          ),
                                          Text(
                                            'useDoc'.tr,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.darkGreen,
                                                fontFamily: AppFonts.poppins,
                                                fontSize: 8.sp),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomPopupMenuButton(
                                          allCities: controller.allCities,
                                          selectedCities:
                                              controller.selectedCities,
                                          onCitySelected: (city) => {}
                                          // controller.updateCitySelection(city),
                                          ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      PopupMenuButton<String>(
                                        color: Colors.white,
                                        shadowColor: Colors.black,
                                        elevation: 10,
                                        offset: Offset(-10, 25),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        child: CustomOptionWidget(
                                            haveIcon: true,
                                            title: controller.selectedType.isEmpty
                                                ? 'Select Year'
                                                : controller.selectedType
                                                    .toString()),
                                        onSelected: (String value) {
                                          // Handle selection logic here (optional)
                                          controller.selectedType.value = value;
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return controller.calenderType
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
                              SizedBox(
                                height: 15.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: CustomGraph(),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
