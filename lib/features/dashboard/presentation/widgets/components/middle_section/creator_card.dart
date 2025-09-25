import 'package:flutter/material.dart';

class CreatorCard extends StatelessWidget {
  const CreatorCard({required this.imageUrl, required this.id, super.key});

  final String imageUrl;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    id,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              '9821',
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: Colors.white70),
            ),
          ),
          Expanded(
            child: LinearProgressIndicator(
              value: 0.8,
              minHeight: 6,
              borderRadius: BorderRadius.circular(32),
              backgroundColor: const Color.fromARGB(146, 54, 69, 132),
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
