import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing, this.onLeadingTap, this.onTrailingTap,
  });

  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(

      elevation: 0,
      backgroundColor: AppColors.white,
      title:title,
      centerTitle: true,
      leading: GestureDetector(
          onTap: onLeadingTap,
          child: leading),
      actions: [
        if (trailing != null) ...[
          GestureDetector(
              onTap: onTrailingTap,
              child: trailing!),
          const SizedBox(width: 10),

        ],
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
