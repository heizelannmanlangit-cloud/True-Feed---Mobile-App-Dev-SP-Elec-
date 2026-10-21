import 'package:flutter/foundation.dart';

import '../data/sample_articles.dart';
import '../models/article.dart';

// ViewModel for the feed. This is the "VM" in MVVM.
// ChangeNotifier lets the screens know when something changes.
class FeedViewModel extends ChangeNotifier {
  final List<Article> _articles = sampleArticles;

  // The Home screen reads this list
  List<Article> get articles => _articles;

  // TODO: search text and Search results
  // TODO: filter by label (Verified / Caution / Unverified)
  // TODO: saved articles, toggleSaved(), and notifyListeners()
}
