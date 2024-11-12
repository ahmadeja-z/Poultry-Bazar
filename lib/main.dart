import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/languages/languages.dart';
import 'package:poultry/app/resources/routes/app_routes.dart';
import 'package:poultry/app/resources/routes/routes_name.dart';
import 'package:poultry/practise.dart';
import 'package:poultry/app/screen/starting_screens/onboarding_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'app/resources/app_colors/app_colors.dart';
import 'app/screen/navbar_screens/analysis_view/analysis_view.dart';
import 'app/screen/navbar_screens/dashboard_view/dashboard_view.dart';
import 'app/screen/navbar_screens/media_view/media_tabs.dart';
import 'app/screen/navbar_screens/media_view/tabs/blogs/blogs_explanation_media.dart';
import 'app/screen/navbar_screens/media_view/tabs/blogs/blogs_media_view.dart';
import 'app/screen/navbar_screens/nav_bar_screen.dart';
import 'app/screen/navbar_screens/profile_view/profile_info_options/about_us_profile.dart';
import 'app/screen/navbar_screens/profile_view/profile_info_options/contact_us_profile.dart';
import 'app/screen/navbar_screens/profile_view/profile_info_options/faqs_profile.dart';
import 'app/screen/navbar_screens/profile_view/profile_info_options/notification_setting_profile.dart';
import 'app/screen/navbar_screens/profile_view/profile_info_options/user_profile_profile.dart';
import 'app/screen/navbar_screens/profile_view/profile_view.dart';
import 'app/screen/notifications/tabs_notification_screen.dart';
import 'app/screen/starting_screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  ); 
  runApp(MyApp())
  // runApp(DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => MyApp(),
  //     ));
  ;}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          // initialRoute:ScreenName.splashScreen,
          // getPages: AppRoutes.appRoute(),
          translations: Languages(),
          locale: const Locale('en','US'),

          home:ResponsiveBuilder(
            builder: (context, sizingInformation) {
              // Determine design size based on the screen type
              Size designSize = getDesignSize(sizingInformation);
              // Initialize ScreenUtil with the determined design size
              ScreenUtil.init(
                context,
                designSize: designSize,
                //  allowFontScaling: false,
              );

              return SplashScreen();
            },
          ),
        );
      },
    );
  }

  Size getDesignSize(SizingInformation sizingInformation) {
    if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return const Size(390, 884); // Mobile design
    } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
      return const Size(768, 1024); // Tablet design
    } else {
      return const Size(360, 640); // Default design for other screens
    }
  }
}
