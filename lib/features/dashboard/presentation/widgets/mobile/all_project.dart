import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/project_card.dart';

class AllProjectss extends StatelessWidget {
  const AllProjectss({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'All Projects',
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 16),
            // TODO: Source of input list not provided. Should I mock or will you supply it?
            ListView.builder(
              shrinkWrap: true,

              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ProjectCard(
                    isSelected: index == 0,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
