import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_theme.dart';
import 'package:internship_ad_stacks/features/dashboard/presentation/pages/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(context),
      home: const DashboardScreen(),
    );
  }      
}
