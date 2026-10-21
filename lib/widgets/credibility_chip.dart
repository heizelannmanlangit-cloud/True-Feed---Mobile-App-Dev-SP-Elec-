import 'package:flutter/material.dart';

import '../models/article.dart';

// Small label that shows Verified, Caution or Unverified.
// The label has text AND color, so it is not color only.
class CredibilityChip extends StatelessWidget {
  final Credibility credibility;

  const CredibilityChip({super.key, required this.credibility});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor(credibility),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        labelText(credibility),
        style: TextStyle(
          color: textColor(credibility),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

String labelText(Credibility c) {
  switch (c) {
    case Credibility.verified:
      return 'Verified';
    case Credibility.caution:
      return 'Caution';
    case Credibility.unverified:
      return 'Unverified';
  }
}

Color textColor(Credibility c) {
  switch (c) {
    case Credibility.verified:
      return const Color(0xFF1E6B3F);
    case Credibility.caution:
      return const Color(0xFF7A5200);
    case Credibility.unverified:
      return const Color(0xFFA32A1F);
  }
}

Color backgroundColor(Credibility c) {
  switch (c) {
    case Credibility.verified:
      return const Color(0xFFE6F3EC);
    case Credibility.caution:
      return const Color(0xFFFBF1DA);
    case Credibility.unverified:
      return const Color(0xFFF8E3E0);
  }
}
