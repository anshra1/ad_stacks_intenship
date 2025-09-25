import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/middle_section/creator_card.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Top Creators',
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Name',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.white70),
              ),
              const Spacer(),
              const SizedBox(width: 78),
              Text(
                'Artworks',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.white70),
              ),
              const Spacer(),
              Text(
                'Rating',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.white70),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // TODO: Source of input list not provided. Should I mock or will you supply it?
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CreatorCard(
                  imageUrl:
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  id: 'maddison_c21',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
