import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/utils/responsive_middle.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/all_projects_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/gradient_widget_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/performance_chart_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/top_creators_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/side_bar_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/top_bar/top_bar_tablet.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SideBar(),
        Expanded(
          child: Column(
            children: [
              TopBarTablet(),
              Expanded(
                child: ResponsiveMiddleSection(
                  hero: GradientWidget(),
                  grid: Row(
                    children: [
                      Expanded(
                        child: AllProjects(),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TopCreators(),
                      ),
                    ],
                  ),
                  chart: PerformanceChart(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
