import 'package:flutter/material.dart';

class BottomSidebarItems extends StatelessWidget {
  const BottomSidebarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 48),
      child: Column(
        children: [
          BottomSidebarItem(icon: Icons.settings_outlined, text: 'Setting'),
          SizedBox(height: 12),
          BottomSidebarItem(icon: Icons.logout, text: 'Logout'),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}

class BottomSidebarItem extends StatelessWidget {
  const BottomSidebarItem({required this.icon, required this.text, super.key});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Text(text),
      ],
    );
  }
}
