import 'package:flutter/material.dart';

// Search screen. Only the search bar is here so far.
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search headlines or topics',
                border: OutlineInputBorder(),
              ),
              // TODO: send the text to FeedViewModel
            ),
            SizedBox(height: 24),
            // TODO: filter buttons (All, Verified, Caution, Unverified)
            // TODO: list of results
            Text('Search is not working yet.'),
          ],
        ),
      ),
    );
  }
}
