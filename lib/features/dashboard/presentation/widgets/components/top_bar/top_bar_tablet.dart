import 'package:flutter/material.dart';

class TopBarTablet extends StatelessWidget {
  const TopBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Text(
            'Home',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.blueGrey.shade600,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.grid_view_outlined,
              color: Colors.black87,
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          Badge(
            smallSize: 8,
            offset: const Offset(6, 2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black87,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.power_settings_new_outlined,
              size: 24,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 12),
          CircleAvatar(
            radius: 24,
            child: Image.asset('assets/images/3.jpeg'),
          ),
          // NOTE: Uniform spacing maintained before avatar; no trailing spacer needed
        ],
      ),
    );
  }
}
