import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_media_tile.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';

class BlogsMedia extends StatelessWidget {
  const BlogsMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(BlogsMediaController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(child: ListView.builder(
        itemCount: controller.hensTitle.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(() {
              return controller.isGrid.value?CustomMediaBox(title: controller.hensTitle[index],
                imageUrl: controller.hensImageUrl[index],
                subTitle: controller.hensSubtitle[index],
              ):CustomMediaTile(title: controller.hensTitle[index], description: controller.hensSubtitle[index], by: controller.hensAddedBy[index], date: controller.hensDate[index], imageUrl: controller.hensImageUrl[index]);
            },),
          );
        },)),
    );
  }
}
