import 'package:flutter/material.dart';

import '../models/article.dart';
import '../widgets/credibility_chip.dart';

// Opens when you tap a story.
// Only the basics for now.
class ArticleScreen extends StatelessWidget {
  final Article article;

  const ArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Article')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CredibilityChip(credibility: article.credibility),
          ),
          const SizedBox(height: 12),
          Text(
            article.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '${article.source} - ${article.timeAgo}',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Text(
            '${article.matchPercent}% match',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          // TODO: Save and Report buttons
          // TODO: Headline Check box (Headline says / Article says)
          // TODO: "Why this rating" section
        ],
      ),
    );
  }
}
