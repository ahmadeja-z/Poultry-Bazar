import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_dashboard_card.dart';
import 'package:poultry/app/screen/notifications/tabs/general_notification_view.dart';
import 'package:poultry/app/screen/notifications/tabs/recommended_notification.dart';

import '../../resources/components/custom_appbar.dart';

class TabNotificationScreen extends StatelessWidget {
  const TabNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: CustomAppBar(
          leading: IconButton(
              splashColor: AppColors.secondaryLightYellow
                  .withOpacity(0.5), // Color of the splash effect
              highlightColor: AppColors.primaryYellow
                  .withOpacity(0.3), // Color when the widget is pressed
              onPressed: (){Get.back();}, icon: Icon(CupertinoIcons.back,color: AppColors.primaryYellow,)),
          title: Text('notification'.tr,style: TextStyle(
            fontSize: 17.sp,
            fontFamily: AppFonts.Lato,fontWeight: FontWeight.w600,color: AppColors.primaryYellow
          ),),

        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xFFEDF2F2),
                child: TabBar(

indicatorSize:TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 2,color: AppColors.primaryYellow)),
                  indicatorColor: AppColors.primaryYellow,
                  dividerColor: Color(0xFFEDF2F2),
                labelStyle:TextStyle(color: AppColors.primaryYellow,fontFamily: AppFonts.poppins,fontWeight: FontWeight.w600),
                  unselectedLabelStyle: TextStyle(color: AppColors.black,fontFamily: AppFonts.poppins,fontWeight: FontWeight.w600),
                  tabs: [
                    Tab(text: 'general'.tr),
                    Tab(text: 'recommended'.tr),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GeneralNotificationView(),
                    RecommendedNotificationView(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
