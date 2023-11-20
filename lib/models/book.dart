import 'package:flutter/material.dart';

class Book extends ChangeNotifier {
  final String title;
  final String author;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    this.isAvailable = true,
  });

  void toggleAvailability() {
    isAvailable = !isAvailable;
    notifyListeners();
  }
}
