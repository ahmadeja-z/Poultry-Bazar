import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_media_tile.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';
import 'package:poultry/app/screen_controller/media_controller/consultancy_media_controller.dart';

import '../../../../../resources/components/custom_search_field.dart';
import '../../../../../resources/components/filter_button.dart';
import 'consultancy_explanation_media.dart';

class ConsultancyMedia extends StatelessWidget {
  const ConsultancyMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConsultancyMediaController());
    final blogController = Get.put(BlogsMediaController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Column(
            children: [

              SizedBox(
                height: 15.h,
              ),Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSearchTextField(
                    onChanged: controller.filterResults,
                    controller: controller.searchController,
                  ),
                  SizedBox(width: 10.w,),
                  CustomInkWellButton(onTap: () {  },icon: Icons.filter_list,)
                ],
              ),
            ),

              Expanded(
                child: Obx(() {
                  if(controller.filteredHensTitle.isEmpty){return Center(child: Text('noItem'.tr,style: TextStyle(color: AppColors.black),),);}else{
                    return ListView.builder(
                      itemCount: controller.hensTitle.length,
                      itemBuilder: (context, index) {
                        return Obx(() {
                          return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: blogController.isGrid.value
                                  ? CustomMediaBox(
                                title: controller.hensTitle[index],
                                imageUrl: controller.hensImageUrl[index],
                                subTitle: controller.hensSubtitle[index],
                                onBoxTap: () {
                                  Get.to(

                                      transition: Transition.fade,ConsultancyExplanationMedia(
                                    title: controller.hensTitle[index],
                                    description: controller.hensSubtitle[index],
                                    imageUrl: controller.hensImageUrl[index],
                                    heroTag: 'heroTag_$index', by: blogController.hensAddedBy[index],
                                    date: blogController.hensDate[index],
                                  ));
                                }, by: blogController.hensAddedBy[index],
                                date: blogController.hensDate[index],
                              )
                                  : CustomMediaTile(
                                  date: blogController.hensDate[index],
                                  by: blogController.hensAddedBy[index],
                                  onTileTap: () {
                                    Get.to(transition: Transition.fade,ConsultancyExplanationMedia(
                                      title: controller.hensTitle[index],
                                      description: controller.hensSubtitle[index],
                                      imageUrl: controller.hensImageUrl[index],
                                      heroTag: 'heroTag_$index', by:blogController.hensAddedBy[index],
                                      date: blogController.hensDate[index],
                                    ));
                                  },
                                  title: controller.hensTitle[index],
                                  description: controller.hensSubtitle[index],
                                  imageUrl: controller.hensImageUrl[index])
                          );
                        },);
                      },
                    );
                  }
                },)
              ),
            ],
          )),
    );
  }
}
