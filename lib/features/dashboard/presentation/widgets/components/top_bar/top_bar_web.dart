import 'package:flutter/material.dart';

class TopBarForWeb extends StatelessWidget {
  const TopBarForWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        children: [
          Text(
            'Home',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.blueGrey.shade600,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.white54),
                suffixIcon: const Icon(
                  Icons.search,

                  color: Colors.white54,
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.tertiary,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.grid_view_outlined,
              color: Colors.black87,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Badge(
            smallSize: 8,
            offset: const Offset(6, 2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black87,
                size: 28,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.power_settings_new_outlined,
              size: 28,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 78),
          CircleAvatar(
            radius: 30,
            child: Image.asset('assets/images/3.jpeg'),
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}
