import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/views/side_bar.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SideBar(),
      ],
    );
  }
}
