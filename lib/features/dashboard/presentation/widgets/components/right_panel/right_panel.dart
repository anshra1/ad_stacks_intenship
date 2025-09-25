import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/right_panel/calendar_view.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/widgets/components/right_panel/info_card.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
     
      color: const Color(0xFF1B244B),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'GENERAL 10:00 AM TO 7:00 PM',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const CalendarView(),
              const SizedBox(height: 24),
              BirthdayAnniversaryCard(
                title: 'Today BirthDay',
                avatarUrls: const [
                  'assets/images/1.png',
                  'assets/images/2.jpeg',
                ],
                totalCount: 2,
                buttonText: 'Birthday Wishing',
                onPressed: () {},
              ),

              BirthdayAnniversaryCard(
                title: 'Anniversary',
                avatarUrls: const [
                  'assets/images/3.jpeg',
                  'assets/images/4.jpeg',
                  'assets/images/5.jpg',
                ],
                totalCount: 3,
                buttonText: 'Anniversary Wishing',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
