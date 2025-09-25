import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';
import 'package:internship_ad_stacks/core/theme/app_theme_extension.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    required this.name,
    required this.role,
    required this.image,
    super.key,
  });

  final String name;
  final String role;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(2), // This creates the border's thickness
              decoration: const BoxDecoration(
                color: Colors.amber, // This is your border color
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 40,
      
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.person, size: 40),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius: BorderRadius.circular(20), // Pill shape
                border: Border.all(
                  color: AppColors.backgroundColor, // Amber border color
                ),
              ),
              child: Text(
                role,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
