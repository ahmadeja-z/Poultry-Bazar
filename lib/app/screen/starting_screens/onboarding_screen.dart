// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:poultry/app/resources/app_colors/app_colors.dart';
// import 'package:poultry/app/resources/assets/app_fonts.dart';
// import 'package:poultry/app/resources/assets/app_icons.dart';
// import 'package:poultry/app/resources/assets/app_images.dart';
// import 'package:poultry/app/screen/practise.dart';
//
// import '../../resources/components/gradient_button.dart';
// import '../../resources/components/positioned_icon.dart';
//
// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 200.h,),
//             Center(
//               child: SizedBox(
//                 height: 300.h,
//                 width: 350.w,
//                 child: Center(
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Container(
//                         decoration: const BoxDecoration(shape: BoxShape.circle),
//                         height: 340.h,
//                         width: 340.w,
//                         child: Image.asset(AppImages.appLogo,color:const Color(0xFFFFAE42),scale: 1.1,),
//                       ),
//                       const PositionedIcon(
//                           top: 55,
//                           left: 10,
//                          size: 95,
//                          icon: AppIcons.marketRatesIcon,),
//                       const PositionedIcon(
//                           top: 0,
//                           left: 85,
//                           size: 95,
//                           icon: AppIcons.posIcon,),
//                       const PositionedIcon(
//                           top: 0,
//                           right: 85,
//                           size: 95,
//                           icon: AppIcons.flockManagementIcon,),
//
//                       const PositionedIcon(icon: AppIcons.eCommenceIcon,
//                         size: 95,
//                         top: 55,
//                         right: 10,
//
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Text('Poultry Bazaar',style: TextStyle(fontFamily: AppFonts.poppins,fontSize: 24.sp,fontWeight: FontWeight.bold,color: AppColors.black),),
//             Text('Description Text Here\nlike a message or description',textAlign: TextAlign.center,style: TextStyle(fontFamily: AppFonts.poppins,fontSize: 12.sp,color: AppColors.grey,),),
//             SizedBox(height: 200.h,),
//             GradientButton(buttonTitle: 'Let\'s Start', onTap: (){}, gradientColor: AppColors.primaryGradient)
//           ],
//         ),
//       ),
//     );
//   }
//
// }
//
import 'dart:async'; // Import Timer for repeating the animation
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';
import 'package:poultry/app/resources/assets/app_icons.dart';
import 'package:poultry/app/resources/assets/app_images.dart';
import '../../resources/components/gradient_button.dart';
import '../navbar_screens/nav_bar_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150.h),
            Center(
              child: SizedBox(
                height: 340.h,
                width: 350.w,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        height: 340.h,
                        width: 340.w,
                        padding: EdgeInsets.all(95.w),
                        child: SvgPicture.asset(
                          AppImages.appLogo,
                        ),
                      ),
                       BouncingIcon(
                        top: 55.h,
                        left: 10.w,
                        icon: AppIcons.marketRatesIcon,
                      ),
                       BouncingIcon(
                        top: 0.h,
                        left: 80.w,
                        icon: AppIcons.posIcon,
                      ),
                       BouncingIcon(
                        top: 0.h,
                        right: 80.w,
                        icon: AppIcons.flockManagementIcon,
                      ),
                       BouncingIcon(
                        top: 55.h,
                        right: 10.w,
                        icon: AppIcons.eCommenceIcon,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              'poultryBazaar'.tr,
              style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
            ConstrainedBox(constraints: BoxConstraints(maxWidth: 200.w),
              child: Text(
                'description'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 12.sp,
                    color: AppColors.grey),
              ),
            ),
            SizedBox(height: 150.h),
            GradientButton(
              buttonTitle: 'Let\'s Start',
              onTap: () {Get.to(()=>NavbarScreen(),transition: Transition.fade, duration: const Duration(milliseconds: 600)
              );
               },
              gradientColor: AppColors.primaryGradient,
            ),
          ],
        ),
      ),
    );
  }
}

class BouncingIcon extends StatefulWidget {
  final double top;
  final double? left; // Make left optional
  final double? right; // Make right optional
  final String icon;

  const BouncingIcon({
    super.key,
    required this.top,
    this.left,
    this.right,
    required this.icon,
  });

  @override
  _BouncingIconState createState() {
    return _BouncingIconState();
  }
}

class _BouncingIconState extends State<BouncingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;
  late Animation<double> _fadeAnimation;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Total duration for bounce
      vsync: this,
    );

    _bounceAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInToLinear, // Bounce effect
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn, // Fade in effect
      ),
    );

    // Start the animation and repeat it every 3 seconds
    _startRepeatedAnimation();
  }

  void _startRepeatedAnimation() {
    _controller.forward();

    // Repeat the animation every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 100), (timer) {
      _controller.reset(); // Reset the controller
      _controller.forward(); // Start the animation again
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right: widget.right,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Opacity(
            opacity: _fadeAnimation.value, // Control the opacity
            child: Transform(
              alignment: Alignment.bottomCenter,
              transform: Matrix4.identity()
                ..translate(0.0, -50 * (1 - _bounceAnimation.value)) // Bounce effect
                ..scale(_bounceAnimation.value), // Scale the icon
              child: Image.asset(
                widget.icon,
                height: 90.h,
                width: 90.w,
              ),
            ),
          );
        },
      ),
    );
  }
}
