import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';

import '../resources/assets/app_icons.dart';
import '../resources/components/profile_background_container_image.dart';

class PractiseHomePage extends StatelessWidget {
  const PractiseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practise Home Page'),
      ),
      body: Center(
        // child:
        //ProfileBackgroundContainerImage(),
        ));}


  }

//
// class ProfileView extends StatelessWidget {
//   const ProfileView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 488.h,
//           width: 270.w,
//           padding: EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.r),
//               color: AppColors.white,
//               boxShadow: [BoxShadow(
//                   color: Colors.black12,
//                   spreadRadius: 3,
//                   blurRadius: 5
//               )]
//
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 CustomRow(leadingIcon: Icon(CupertinoIcons.person,color: AppColors.grey,), text: 'userProfile', onTap: (){}),
//                 Divider(color: AppColors.grey,), CustomRow(leadingIcon: Icon(CupertinoIcons.bell,color: AppColors.grey,), text: 'notification', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.paid_outlined,color: AppColors.grey,), text: 'subscriptionPlan', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.quiz_outlined,color: AppColors.grey,), text: 'faqs', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.info_outline_rounded,color: AppColors.grey,), text: 'aboutUs', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.person_3_outlined,color: AppColors.grey,), text: 'contactUs', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.help_outline_rounded,color: AppColors.grey,), text: 'help', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.star_rate_outlined,color: AppColors.grey,), text: 'rateApp', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.share,color: AppColors.grey,), text: 'shareApp', onTap: (){}),
//                 Divider(color: AppColors.grey), CustomRow(leadingIcon: Icon(Icons.logout_rounded,color: AppColors.primaryYellow,), text: 'logOut', onTap: (){}),
//
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class CustomRow extends StatelessWidget {
//   const CustomRow({super.key, required this.leadingIcon, required this.text, required this.onTap});
//   final Icon leadingIcon;
//   final String text;
//   final VoidCallback onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 3),
//         child: Row(
//           children: [leadingIcon,SizedBox(width: 8.w,),
//             Text(text.tr,style: TextStyle(fontSize: 13.sp,color: AppColors.grey,fontWeight: FontWeight.w500,fontFamily: AppFonts.poppins),)],
//         ),
//       ),
//     );
//   }
// }
