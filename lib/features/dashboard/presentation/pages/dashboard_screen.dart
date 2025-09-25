import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/utils/responsive_layout.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_mobile.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_tablet.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/layout/dashboard_web.dart';

/// TODO: Build responsive dashboard using widgets/layout/*
/// NOTE: Consider using a shimmer for loading states
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const Scaffold(
          backgroundColor: Color.fromARGB(255, 191, 201, 206),
          body: ResponsiveLayout(
            mobile: DashboardMobile(),
            tablet: DashboardTablet(),
            desktop: DashboardWeb(),
          ),
        );
      },
    );
  }
}
