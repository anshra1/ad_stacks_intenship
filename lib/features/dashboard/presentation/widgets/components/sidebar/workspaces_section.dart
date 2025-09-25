import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/workspace_expansion_tile.dart';

class WorkspacesSection extends StatelessWidget {
  const WorkspacesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFFF1F3FF),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'WORKSPACES',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.add),
            ],
          ),
        ),
        const WorkspaceExpansionTile(
          title: 'Adstacks',
          // TODO: Add actual sub-items for the workspace
          children: [
            ListTile(
              title: Text(
                '  Sub item 1',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        const WorkspaceExpansionTile(
          title: 'Finance',
          // TODO: Add actual sub-items for the workspace
          children: [
            ListTile(
              title: Text(
                '  Sub item 1',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
