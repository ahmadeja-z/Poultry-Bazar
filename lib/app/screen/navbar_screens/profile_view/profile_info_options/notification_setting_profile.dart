import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import '../../../../resources/app_colors/app_colors.dart';
import '../../../../resources/components/profile_background_container_image.dart';
import '../../../../screen_controller/profile_controller/notication_profile_controller.dart';

// Create a global instance of the NotificationController
class NotificationSettingProfile extends StatelessWidget {
  const NotificationSettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the instance of the NotificationController
    final NotificationController controller = Get.put(NotificationController());

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          const InfoHeaderBackground(
            title: 'About Us',
          ),
          Positioned(
            top: 150.h,
            child: Container(
              width: 330.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Use Obx to make the switches reactive
                  Obx(() => CustomOptionRow(
                    title: 'blogs',
                    isOn: controller.notifications['blogs']!.value,
                    onChanged: (value) => controller.toggleNotification('blogs'),
                  )),
                  Divider(),
                  Obx(() => CustomOptionRow(
                    title: 'diseases',
                    isOn: controller.notifications['diseases']!.value,
                    onChanged: (value) => controller.toggleNotification('diseases'),
                  )),
                  Divider(),
                  Obx(() => CustomOptionRow(
                    title: 'consultancyVideos',
                    isOn: controller.notifications['consultancyVideos']!.value,
                    onChanged: (value) => controller.toggleNotification('consultancyVideos'),
                  )),
                  Divider(),
                  Obx(() => CustomOptionRow(
                    title: 'marketUpdates',
                    isOn: controller.notifications['marketUpdates']!.value,
                    onChanged: (value) => controller.toggleNotification('marketUpdates'),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOptionRow extends StatelessWidget {
  const CustomOptionRow({
    super.key,
    required this.isOn,
    required this.title,
    required this.onChanged,
  });

  final bool isOn;
  final String title;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.tr,
          style: TextStyle(
            fontSize: 12.sp,
            fontFamily: AppFonts.poppins,
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
          ),
        ),
        Switch(
          activeTrackColor: AppColors.primaryYellow,
          inactiveThumbColor: AppColors.grey,
          inactiveTrackColor: AppColors.white,
          value: isOn,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
