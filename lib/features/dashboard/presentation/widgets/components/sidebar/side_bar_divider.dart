import 'package:flutter/material.dart';

class SideBarDivider extends StatelessWidget {
  const SideBarDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: .5,
      endIndent: 12,
      indent: 12,
      color: Colors.grey.shade700,
    );
  }
}
