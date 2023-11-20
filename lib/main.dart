import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/add_book_screen.dart';
import 'screens/user_details_screen.dart';
import 'screens/view_books_screen.dart';
import 'screens/view_users_screen.dart';
import 'models/book.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Book(
        title: 'Lord of the Rings',
        author: 'Tolkin',
      ),
      child: MaterialApp(
        title: 'Library Management',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/view_books': (context) => ViewBooksScreen(),
          '/add_book': (context) => AddBookScreen(),
          '/view_users': (context) => ViewUsersScreen(),
          '/user_details': (context) => UserDetailsScreen(),
        },
      ),
    ),
  );
}
