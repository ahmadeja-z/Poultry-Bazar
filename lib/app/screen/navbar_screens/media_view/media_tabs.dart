import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:poultry/app/resources/assets/app_icons.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/blogs/blogs_media_view.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/consultancy/consultancy_media_view.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/diseases/diseases_media_view.dart';

import '../../../resources/app_colors/app_colors.dart';
import '../../../resources/assets/app_fonts.dart';
import '../../../resources/components/custom_appbar.dart';
import '../../../screen_controller/media_controller/blogs_media_controller.dart';

class MediaTabs extends StatelessWidget {
  MediaTabs({super.key});
  final blogController = Get.put(BlogsMediaController());
  final List<Tab> mediaTabs = [
    const Tab(
      text: 'Blogs',
    ),
    const Tab(
      text: 'Diseases',
    ),
    const Tab(
      text: 'Consultancy',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: mediaTabs.length,
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: CustomAppBar(
            trailing: Obx(() => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                  splashColor: AppColors.secondaryLightYellow
                      .withOpacity(0.5), // Color of the splash effect
                  highlightColor: AppColors.primaryYellow
                      .withOpacity(0.3), // Color when the widget is pressed

                  onTap: () {
                    blogController.changeLayout();
                  },
                  child: SvgPicture.asset(
                    blogController.isGrid == false
                        ? AppIcons.gridIcon
                        : AppIcons.listIcon,
                   height: 17.h,width: 17.w,

                  )),
            )),
            title: Text(
              'Media',
              style: TextStyle(fontSize: 17.sp, color: AppColors.primaryYellow),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: const UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2, color: AppColors.primaryYellow)),
                  labelStyle: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  tabs: mediaTabs,
                  dividerHeight: 1.h,
                  labelColor: AppColors.primaryYellow,
                  unselectedLabelColor: AppColors.grey,
                  indicatorColor: AppColors.secondaryLightYellow,
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      BlogsMedia(),
                      DiseasesMedia(),
                      ConsultancyMedia(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
