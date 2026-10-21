import 'package:flutter/material.dart';

import '../viewmodels/feed_view_model.dart';
import '../widgets/article_card.dart';
import 'article_screen.dart';

// First screen. Shows the feed of stories.
class HomeScreen extends StatelessWidget {
  final FeedViewModel viewModel;

  const HomeScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TRUE FEED',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      // Rebuilds the list when the ViewModel changes
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: viewModel.articles.length,
            itemBuilder: (context, index) {
              final article = viewModel.articles[index];
              return ArticleCard(
                article: article,
                onTap: () {
                  // Navigation: open the article page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticleScreen(article: article),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
