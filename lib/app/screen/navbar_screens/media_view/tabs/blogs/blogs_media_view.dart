import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_media_tile.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/blogs/blogs_explanation_media.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';

import '../../../../../resources/components/custom_search_field.dart';
import '../../../../../resources/components/filter_button.dart';

class BlogsMedia extends StatelessWidget {
  const BlogsMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BlogsMediaController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Padding(
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
          SizedBox(
            height: 10.h,
          ),
          Expanded(child: Obx(
            () {
              if (controller.filteredHensTitle.isEmpty) {
                return Center(
                  child: Text(
                    'noItem'.tr,
                    style: const TextStyle(color: AppColors.black),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: controller.filteredHensTitle.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: controller.isGrid.value
                            ? CustomMediaBox(
                                title: controller.hensTitle[index],
                                imageUrl: controller.hensImageUrl[index],
                                onBoxTap: () {
                                  Get.to(
                                      transition: Transition.fade,
                                      BlogsExplanationMedia(
                                        title:
                                            controller.filteredHensTitle[index],
                                        description:
                                            controller.hensSubtitle[index],
                                        imageUrl:
                                            controller.hensImageUrl[index],
                                        heroTag: 'heroTag_$index',
                                        by: controller.hensAddedBy[index],
                                        date: controller.hensDate[index],
                                      )); // Add heroTag
                                },
                                subTitle: controller.hensSubtitle[index],
                                by: controller.hensAddedBy[index],
                                date: controller.hensDate[index],
                              )
                            : CustomMediaTile(
                                onTileTap: () {
                                  Get.to(
                                      transition: Transition.fade,
                                      BlogsExplanationMedia(
                                          date: controller.hensDate[index],
                                          by: controller.hensAddedBy[index],
                                          title: controller.hensTitle[index],
                                          description:
                                              controller.hensSubtitle[index],
                                          imageUrl:
                                              controller.hensImageUrl[index],
                                          heroTag:
                                              'heroTag_$index')); // Add heroTag
                                },
                                title: controller.filteredHensTitle[index],
                                description: controller.hensSubtitle[index],
                                by: controller.hensAddedBy[index],
                                date: controller.hensDate[index],
                                imageUrl: controller.hensImageUrl[index],
                              ));
                  },
                );
              }
            },
          )),
        ],
      )),
    );
  }
}
