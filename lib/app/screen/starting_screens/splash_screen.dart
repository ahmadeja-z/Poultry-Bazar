import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_icons.dart';
import 'package:poultry/app/resources/assets/app_images.dart';
import 'package:poultry/app/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SplashServices.isLogin();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.primaryGradient,begin: Alignment.bottomRight,end: Alignment.topLeft)
      ),
      child: Align(
          alignment:Alignment.topLeft,child: Image.asset(AppIcons.iconsEllipse,scale: 1.8,)),
    ),
    Center(child: SvgPicture.asset(AppImages.appLogo,))
  ],
),
    );
  }
}
