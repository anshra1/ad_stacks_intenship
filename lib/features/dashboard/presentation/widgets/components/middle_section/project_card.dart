import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    this.isSelected = false,
  });
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final projectTextColor = isSelected
        ? Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black87)
        : Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70);
    return Padding(
      padding: !isSelected ? const EdgeInsets.symmetric(horizontal: 8) : EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.error
              : const Color.fromARGB(146, 54, 69, 132),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                //   color: isSelected ? Colors.white70 : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Technology behind the Blockchain',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 4),
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'Project #1 ',
                      style: projectTextColor,
                      children: <TextSpan>[
                        TextSpan(
                          text: '• See project details',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.edit_outlined,
                size: isSelected ? 24 : 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
