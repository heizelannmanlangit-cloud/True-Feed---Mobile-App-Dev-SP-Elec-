import 'package:flutter/material.dart';

import '../viewmodels/feed_view_model.dart';
import 'home_screen.dart';
import 'report_screen.dart';
import 'saved_screen.dart';
import 'search_screen.dart';

// Holds the bottom navigation bar: Home | Search | Saved | Report
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedIndex = 0;

  // One ViewModel, created here and given to the screens that need it
  final FeedViewModel feedViewModel = FeedViewModel();

  @override
  void dispose() {
    feedViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(viewModel: feedViewModel),
      const SearchScreen(),
      const SavedScreen(),
      const ReportScreen(),
    ];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.bookmark_border), label: 'Saved'),
          NavigationDestination(icon: Icon(Icons.flag_outlined), label: 'Report'),
        ],
      ),
    );
  }
}
