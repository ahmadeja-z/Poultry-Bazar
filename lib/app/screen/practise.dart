import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';

import '../resources/assets/app_icons.dart';

class PractiseHomePage extends StatelessWidget {
  const PractiseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practise Home Page'),
      ),
      body: Center(
        child: Container(
          height: 175.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: AppColors.primaryGradient,begin: Alignment.bottomCenter,end: Alignment.topCenter),

          ),
          child: Align(alignment: Alignment.bottomRight,

          child: Image.asset(AppIcons.henIcon),),
        ),),

    );
  }
}
