import 'package:get/get.dart';
import 'package:poultry/app/resources/routes/routes_name.dart';
import 'package:poultry/app/screen/navbar_screens/nav_bar_screen.dart';
import 'package:poultry/app/screen/practise.dart';
import 'package:poultry/app/screen/starting_screens/onboarding_screen.dart';
import 'package:poultry/app/screen/starting_screens/splash_screen.dart';

class AppRoutes{
  static appRoute()=>[
    // GetPage(name: RoutesName.practise, page: () => const PractiseHomePage()),
    GetPage(name: ScreenName.splashScreen, page: () => const SplashScreen()),
    GetPage(name: ScreenName.onBoardingScreen, page: () => const OnboardingScreen()),
    GetPage(name: ScreenName.navBarScreen, page: () =>  NavbarScreen()),

  ];
}