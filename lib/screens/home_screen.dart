// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../components/vocabulary_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> vocabularies = [
    {'word': 'Apple', 'meaning': 'Apel'},
    {'word': 'Banana', 'meaning': 'Pisang'},
    // Tambahkan vocabulary lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Vocabulary'),
      ),
      body: ListView.builder(
        itemCount: vocabularies.length,
        itemBuilder: (context, index) {
          return VocabularyCard(
            word: vocabularies[index]['word']!,
            meaning: vocabularies[index]['meaning']!,
          );
        },
      ),
    );
  }
}
