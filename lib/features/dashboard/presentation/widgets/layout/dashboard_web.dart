import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/views/side_bar.dart';

/// TODO: Build wide layout with sidebar, header, and grid content
class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SideBar(),
      ],
    );
  }
}
