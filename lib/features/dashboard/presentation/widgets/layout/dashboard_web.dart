import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';
import 'package:internship_ad_stacks/core/utils/responsive_middle.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/all_projects_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/gradient_widget_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/performance_chart_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/top_creators_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/right_panel/right_panel.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/side_bar_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/top_bar/top_bar_web.dart';

/// TODO: Build wide layout with sidebar, header, and grid content
class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SideBar(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBarForWeb(),
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        child: ResponsiveMiddleSection(
                          hero: ColoredBox(
                            color: AppColors.backgroundColor,
                            child: const GradientWidget(),
                          ),
                          grid: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                          chart: const PerformanceChart(),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: RightPanel(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
