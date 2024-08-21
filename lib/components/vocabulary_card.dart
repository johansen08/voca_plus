// lib/components/vocabulary_card.dart
import 'package:flutter/material.dart';

class VocabularyCard extends StatelessWidget {
  final String word;
  final String meaning;

  const VocabularyCard({required this.word, required this.meaning});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(word),
        subtitle: Text(meaning),
      ),
    );
  }
}
