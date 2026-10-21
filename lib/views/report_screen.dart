import 'package:flutter/material.dart';

// Report form. Placeholder for now.
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: reasons as checkboxes (use ReportViewModel)
    // TODO: optional comment box
    // TODO: Submit button and "report submitted" screen
    return Scaffold(
      appBar: AppBar(title: const Text('Report article')),
      body: const Center(child: Text('Report form coming soon.')),
    );
  }
}
