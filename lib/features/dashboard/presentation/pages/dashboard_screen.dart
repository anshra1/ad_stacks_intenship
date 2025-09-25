import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/utils/responsive_layout.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_mobile.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_tablet.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_web.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return  Scaffold(
          backgroundColor: Colors.blueGrey.shade100,
          body: const ResponsiveLayout(
            mobile: DashboardMobile(),
            tablet: DashboardTablet(),
            desktop: DashboardWeb(),
          ),
        );
      },
    );
  }
}
