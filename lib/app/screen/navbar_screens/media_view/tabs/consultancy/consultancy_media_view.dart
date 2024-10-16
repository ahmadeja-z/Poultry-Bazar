import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/components/custom_media_box.dart';
import 'package:poultry/app/resources/components/custom_media_tile.dart';
import 'package:poultry/app/screen_controller/media_controller/blogs_media_controller.dart';
import 'package:poultry/app/screen_controller/media_controller/consultancy_media_controller.dart';

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
          child: ListView.builder(
        itemCount: controller.hensTitle.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () {
                    return blogController.isGrid.value
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
                                heroTag: 'heroTag_$index',
                              ));
                            },
                          )
                        : CustomMediaTile(
                      date: null,
                            by: null,
                            onTileTap: () {
                              Get.to(transition: Transition.fade,ConsultancyExplanationMedia(
                                title: controller.hensTitle[index],
                                description: controller.hensSubtitle[index],
                                imageUrl: controller.hensImageUrl[index],
                                heroTag: 'heroTag_$index',
                              ));
                            },
                            title: controller.hensTitle[index],
                            description: controller.hensSubtitle[index],
                            imageUrl: controller.hensImageUrl[index]);
                  },
                ),
              ),
            ],
          );
        },
      )),
    );
  }
}
