import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_media_tile.dart';
import 'package:poultry/app/screen/navbar_screens/media_view/tabs/blogs/blogs_explanation_media.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';

class BlogsMedia extends StatelessWidget {
  const BlogsMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BlogsMediaController());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: ListView.builder(
            itemCount: controller.hensTitle.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                      () {
                    return controller.isGrid.value
                        ? CustomMediaBox(
                      title: controller.hensTitle[index],
                      imageUrl: controller.hensImageUrl[index],
                      onBoxTap: () {
                        Get.to(
                            transition: Transition.fade,
                            BlogsExplanationMedia(
                            title: controller.hensTitle[index],
                            description: controller.hensSubtitle[index],
                            imageUrl: controller.hensImageUrl[index],
                            heroTag: 'heroTag_$index', by: controller.hensAddedBy[index],
                            date: controller.hensDate[index],)); // Add heroTag
                      },
                      subTitle: controller.hensSubtitle[index], by:controller.hensAddedBy[index],date: controller.hensDate[index],
                    )
                        : CustomMediaTile(
                      onTileTap: () {
                        Get.to(transition: Transition.fade,BlogsExplanationMedia(
                          date: controller.hensDate[index],
                            by: controller.hensAddedBy[index],
                            title: controller.hensTitle[index],
                            description: controller.hensSubtitle[index],
                            imageUrl: controller.hensImageUrl[index],
                            heroTag: 'heroTag_$index')); // Add heroTag
                      },
                      title: controller.hensTitle[index],
                      description: controller.hensSubtitle[index],
                      by: controller.hensAddedBy[index],
                      date: controller.hensDate[index],
                      imageUrl: controller.hensImageUrl[index],
                    );
                  },
                ),
              );
            },
          )),
    );
  }
}
