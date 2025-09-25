import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';
import 'package:internship_ad_stacks/core/utils/responsive_breakpoints.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias, // To respect the border radius
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/gradient.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ResponsiveBreakpoints.scaleFont(8)),
                  Text(
                    'ETHEREUM 2.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ResponsiveBreakpoints.scaleFont(10, context),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: ResponsiveBreakpoints.scaleFont(12)),
                  Text(
                    'Top Rating\nProject',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ResponsiveBreakpoints.scaleFont(22, context),
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: ResponsiveBreakpoints.scaleFont(12, context)),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: ResponsiveBreakpoints.scaleFont(12, context),
                      ),
                      children: const [
                        TextSpan(
                          text: 'Trending project and high rating\n',
                        ),
                        TextSpan(
                          text: 'Project Created by team.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ResponsiveBreakpoints.scaleFont(18)),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF301847),
                      padding: EdgeInsets.symmetric(
                        horizontal: ResponsiveBreakpoints.scaleFont(32, context),
                        vertical: ResponsiveBreakpoints.scaleFont(20, context),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Learn More.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ResponsiveBreakpoints.scaleFont(14, context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
