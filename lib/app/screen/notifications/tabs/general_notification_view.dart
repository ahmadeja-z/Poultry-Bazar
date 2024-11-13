import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_dashboard_card.dart';
import 'package:poultry/app/screen_controller/notification_controller.dart';

class GeneralNotificationView extends StatelessWidget {
  GeneralNotificationView({super.key});

  final notificationController = Get.put(NotificationsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: notificationController.dummyNotifications.length,
          itemBuilder: (context, index) {
            final notification = notificationController.dummyNotifications[index];
            return ListTile(
              title: Text(notification.title,style: TextStyle(fontWeight: FontWeight.w700,fontFamily: AppFonts.poppins,color: AppColors.black,fontSize: 15.sp ),),
              subtitle: Text(notification.description,style: TextStyle(fontSize: 10.sp,fontFamily: AppFonts.poppins,fontWeight: FontWeight.w300),),
              trailing: Text(
                "${notification.dateTime.hour}:${notification.dateTime.minute.toString().padLeft(2, '0')}"
                    ,
                style: TextStyle(color: Colors.grey, fontSize: 12.sp,fontFamily: AppFonts.poppins),
              ),
            );
          },
        ),
      ),
    );
  }
}
