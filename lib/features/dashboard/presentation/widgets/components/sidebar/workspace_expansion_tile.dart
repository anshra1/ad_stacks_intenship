import 'package:flutter/material.dart';

class WorkspaceExpansionTile extends StatelessWidget {
  const WorkspaceExpansionTile({
    required this.title,
    super.key,
    this.children = const [],
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 54),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          iconColor: Theme.of(context).textTheme.bodyMedium?.color,
          collapsedIconColor: Theme.of(context).textTheme.bodyMedium?.color,
          title: Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          children: children,
        ),
      ),
    );
  }
}
