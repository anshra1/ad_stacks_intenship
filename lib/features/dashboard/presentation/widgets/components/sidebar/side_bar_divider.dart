import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';

class SideBarDivider extends StatelessWidget {
  const SideBarDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: .5,
      endIndent: 12,
      indent: 12,
      color: AppColors.backgroundColor,
    );
  }
}
