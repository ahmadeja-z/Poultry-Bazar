import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/blogs/blogs_media_view.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/consultancy/consultancy_media_view.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/diseases/diseases_media_view.dart';

import '../../../resources/app_colors/app_colors.dart';
import '../../../resources/assets/app_fonts.dart';
import '../../../resources/components/custom_appbar.dart';
import '../../../screen_controller/media_controller/blogs_media_controller.dart';

class MediaTabs extends StatelessWidget {
  MediaTabs({super.key});
  final  blogController = Get.put(BlogsMediaController());
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

              trailing: Obx(()=> IconButton(
                  splashColor: AppColors.secondaryLightYellow
                      .withOpacity(0.5), // Color of the splash effect
                  highlightColor: AppColors.primaryYellow
                      .withOpacity(0.3), // Color when the widget is pressed

                  onPressed: (){blogController.changeLayout();}, icon: Icon(blogController.isGrid==false?Icons.apps:Icons.view_list,color: AppColors.primaryYellow,))),
              title:Text('Media',style: TextStyle(fontSize: 17.sp,color: AppColors.primaryYellow),),),
          body: SafeArea(
            child: Column(
              children: [
                TabBar(

                  labelStyle:  TextStyle(
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
