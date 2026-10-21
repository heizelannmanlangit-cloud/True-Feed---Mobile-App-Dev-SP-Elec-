// The three labels an article can have.
enum Credibility { verified, caution, unverified }

// One news story. This is the "Model" in MVVM.
class Article {
  final int id;
  final String title; // what the headline says
  final String source;
  final String timeAgo;
  final String topic;
  final Credibility credibility;
  final int matchPercent; // how closely the headline matches the article
  final String articleSays; // what the article really says
  final String whyRating; // short reason for the label

  const Article({
    required this.id,
    required this.title,
    required this.source,
    required this.timeAgo,
    required this.topic,
    required this.credibility,
    required this.matchPercent,
    required this.articleSays,
    required this.whyRating,
  });
}
