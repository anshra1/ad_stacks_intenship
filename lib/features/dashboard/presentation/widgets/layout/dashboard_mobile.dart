import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/gradient_widget_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/performance_chart_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/side_bar_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/top_bar/top_bar_mobile.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/mobile/all_project.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/mobile/top_creatoress.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBarMobile(),
      drawer: Drawer(
        child: SideBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: [
              GradientWidget(),
              SizedBox(height: 12),
              AllProjectss(),
              SizedBox(height: 12),
              TopCreatorss(),
              SizedBox(height: 12),
              PerformanceChart(),
            ],
          ),
        ),
      ),
    );
  }
}
