import 'package:flutter/material.dart';

class TopBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const TopBarMobile({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black87,
            tooltip: 'Menu',
            onPressed: () {
              // TODO: Ensure the surrounding Scaffold provides a Drawer for this to open
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      iconTheme: const IconThemeData(color: Colors.black87),
      title: Text(
        'Home',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.blueGrey.shade600,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.black87, size: 22),
          tooltip: 'Search',
        ),
        const SizedBox(width: 12),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.grid_view_outlined, color: Colors.black87, size: 22),
          tooltip: 'Apps',
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
              size: 22,
            ),
            tooltip: 'Notifications',
          ),
        ),
        const SizedBox(width: 12),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.power_settings_new_outlined,
            color: Colors.black87,
            size: 22,
          ),
          tooltip: 'Power',
        ),
        const SizedBox(width: 12),
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: CircleAvatar(
            radius: 16,
            child: Image.asset('assets/images/3.jpeg'),
          ),
        ),
      ],
    );
  }
}
