import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/sidebar/sidebar_item.dart';

class SideBarItemsList extends StatefulWidget {
  const SideBarItemsList({super.key});

  @override
  State<SideBarItemsList> createState() => _SideBarItemsListState();
}

class _SideBarItemsListState extends State<SideBarItemsList> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _items = [
    {'icon': Icons.home, 'text': 'Home'},
    {'icon': Icons.people_outline, 'text': 'Employees'},
    {'icon': Icons.list_alt_outlined, 'text': 'Attendance'},
    {'icon': Icons.calendar_today_outlined, 'text': 'Summary'},
    {'icon': Icons.info_outline, 'text': 'Information'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(_items.length, (index) {
        final item = _items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SideBarItem(
            icon: item['icon'] as IconData,
            text: item['text'] as String,
            isSelected: _selectedIndex == index,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        );
      }),
    );
  }
}
