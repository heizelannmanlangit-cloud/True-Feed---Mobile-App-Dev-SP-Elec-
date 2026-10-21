import '../models/article.dart';

// Sample stories for now.
// TODO: replace with real news later (RSS feeds or a news API).
const List<Article> sampleArticles = [
  Article(
    id: 1,
    title: 'Senate passes new tuition subsidy bill',
    source: 'Metro Daily News',
    timeAgo: '2h ago',
    topic: 'Education',
    credibility: Credibility.verified,
    matchPercent: 92,
    articleSays: 'Senate passes new tuition subsidy bill',
    whyRating: 'Trusted source. Other outlets report the same thing.',
  ),
  Article(
    id: 2,
    title: 'Shock claim: Mayor supports pax silica',
    source: 'cebuupdates.blog',
    timeAgo: '3h ago',
    topic: 'Politics',
    credibility: Credibility.caution,
    matchPercent: 41,
    articleSays: 'Mayor supports AI in education',
    whyRating: 'Source has a mixed record.',
  ),
  Article(
    id: 3,
    title: 'University to ban all group chats, student says',
    source: 'campuschismis.page',
    timeAgo: '5h ago',
    topic: 'Local',
    credibility: Credibility.unverified,
    matchPercent: 12,
    articleSays: 'Students are reminded to follow the online conduct policy',
    whyRating: 'Headline does not match the article.',
  ),
  Article(
    id: 4,
    title: 'City council approves bike lanes',
    source: 'Visayas Herald',
    timeAgo: '1d ago',
    topic: 'Local',
    credibility: Credibility.verified,
    matchPercent: 88,
    articleSays: 'City council approves bike lanes on three main roads',
    whyRating: 'Trusted source. Headline matches the article.',
  ),
];
