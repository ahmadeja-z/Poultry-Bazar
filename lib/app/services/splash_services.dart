import 'dart:async';

import 'package:get/get.dart';
import 'package:poultry/app/screen/starting_screens/onboarding_screen.dart';

class SplashServices{
  static void isLogin(){
    Timer.periodic(Duration(seconds: 3), (timer) => Get.to(OnboardingScreen()),);
  }

}