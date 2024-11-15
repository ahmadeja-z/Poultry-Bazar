import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/resources/app_colors/app_colors.dart';

class CustomInkWellButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const CustomInkWellButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.secondaryLightYellow.withOpacity(0.5),
      highlightColor: AppColors.primaryYellow.withOpacity(0.3),
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        height: 42.h,
        width: 42.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.grey.withOpacity(.35),
          ),
        ),
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [
                AppColors.primaryYellow,
                AppColors.primaryYellow,
                AppColors.darkPrimaryYellow,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Center(child: Icon(icon,size: 25.w,)),
        ),
      ),
    );
  }
}
