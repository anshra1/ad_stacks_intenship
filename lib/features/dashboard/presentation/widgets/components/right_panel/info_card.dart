import 'package:flutter/material.dart';

class BirthdayAnniversaryCard extends StatelessWidget {
  const BirthdayAnniversaryCard({
    required this.title,
    required this.avatarUrls,
    required this.totalCount,
    required this.buttonText,
    required this.onPressed,
    super.key,
  });
  final String title;
  final List<String> avatarUrls;
  final int totalCount;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF2D2341), // Dark purple background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 12,
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Icon(Icons.star, color: Colors.yellow, size: 24),
                  const Icon(Icons.star, color: Colors.yellow, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.star, color: Colors.yellow, size: 24),
                  const Icon(Icons.star, color: Colors.yellow, size: 18),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Avatars row
          Row(
            children: avatarUrls.map((url) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      url,
                      fit: BoxFit.cover,
                      // TODO: Replace dummy assets with real user avatars when available
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.person,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),

          // Total count
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 8),
              const VerticalDivider(
                color: Colors.green,
                thickness: 1,
                width: 40,
              ),
              const SizedBox(width: 8),
              Text(
                '$totalCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const VerticalDivider(
                color: Colors.white70,
                thickness: 1,
                width: 20,
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Button
          Center(
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 49),
                backgroundColor: const Color(0xFF9C6DEE), // Purple button
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.send, size: 20),
                    const SizedBox(width: 8),
                    Text(buttonText),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

// Main widget that combines both cards
class BirthdayAnniversaryWidget extends StatelessWidget {
  const BirthdayAnniversaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E), // Dark blue background
      appBar: AppBar(
        title: const Text('Special Occasions'),
        backgroundColor: const Color(0xFF2D2341),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Today Birthday Card
            BirthdayAnniversaryCard(
              title: 'Today Birthday',
              avatarUrls: const [
                'assets/images/1.png',
                'assets/images/2.jpeg',
              ],
              totalCount: 2,
              buttonText: 'Birthday Wishing',
              onPressed: () {
                // Handle birthday wishing action
                print('Birthday Wishing pressed');
              },
            ),

            // Anniversary Card
            BirthdayAnniversaryCard(
              title: 'Anniversary',
              avatarUrls: const [
                'assets/images/3.jpeg',
                'assets/images/4.jpeg',
                'assets/images/5.jpg',
              ],
              totalCount: 3,
              buttonText: 'Anniversary Wishing',
              onPressed: () {
                // Handle anniversary wishing action
                print('Anniversary Wishing pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
