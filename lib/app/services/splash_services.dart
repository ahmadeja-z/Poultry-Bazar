import 'dart:async';

import 'package:get/get.dart';
import 'package:poultry/app/resources/routes/routes_name.dart';
import 'package:poultry/app/screen/starting_screens/onboarding_screen.dart';

class SplashServices {
  static void isLogin() {
    // Using a single Timer to wait for a specified duration before navigating
    Timer(const Duration(seconds: 2), () {
      // Navigate to the OnboardingScreen
      Get.offAll(() => OnboardingScreen(),transition: Transition.circularReveal, duration: const Duration(milliseconds: 600));
    });
  }
}
