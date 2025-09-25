import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/views/ad_stack_logo.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/bottom_sidebar_items.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/side_bar_divider.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/sidebar_items_list.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/user_profile.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/workspaces_section.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 240,
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdStackLogo(),
            SideBarDivider(),
            UserProfile(
              name: 'Pooja Mishra',
              role: 'Admin',
              image: 'https://randomuser.me/api/portraits/women/44.jpg',
            ),
            SideBarDivider(),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SideBarItemsList(),
                    SizedBox(height: 16),
                    WorkspacesSection(),
                  ],
                ),
              ),
            ),
            BottomSidebarItems(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
