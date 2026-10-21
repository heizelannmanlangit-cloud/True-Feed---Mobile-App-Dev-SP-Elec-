import 'package:flutter/material.dart';

// Reading list. Placeholder for now.
class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: show saved articles from FeedViewModel
    // TODO: empty state when nothing is saved
    return Scaffold(
      appBar: AppBar(title: const Text('Saved')),
      body: const Center(child: Text('Saved articles will show here.')),
    );
  }
}
