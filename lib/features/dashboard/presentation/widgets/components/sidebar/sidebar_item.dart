import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';

class SideBarItem extends StatefulWidget {
  const SideBarItem({
    required this.icon,
    required this.text,
    super.key,
    this.isSelected = false,
    this.onTap,
  });

  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  State<SideBarItem> createState() => _SideBarItemState();
}

class _SideBarItemState extends State<SideBarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: widget.isSelected
                ? kSelectedBackgroundColor
                : _isHovered
                ? kHoverBackgroundColor
                : Colors.transparent,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Icon(
                  widget.icon,
                  color: widget.isSelected || _isHovered
                      ? kSelectedForegroundColor
                      : kDefaultForegroundColor,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.isSelected || _isHovered
                        ? kSelectedForegroundColor
                        : kDefaultForegroundColor,
                    fontWeight: widget.isSelected ? FontWeight.bold : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
