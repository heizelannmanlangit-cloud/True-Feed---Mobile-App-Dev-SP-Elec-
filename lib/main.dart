import 'package:flutter/material.dart';

import 'views/main_navigation.dart';

void main() {
  runApp(const TrueFeedApp());
}

class TrueFeedApp extends StatelessWidget {
  const TrueFeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrueFeed',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF2E8B57),
        scaffoldBackgroundColor: const Color(0xFFF5F0E6),
      ),
      home: const MainNavigation(),
    );
  }
}
