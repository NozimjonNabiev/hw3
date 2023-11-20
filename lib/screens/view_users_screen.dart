import 'package:flutter/material.dart';

class ViewUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> users = [
      {'name': 'User 1', 'id': '001', 'borrowed_books': '2'},
      {'name': 'User 2', 'id': '002', 'borrowed_books': '5'},
      {'name': 'User 3', 'id': '003', 'borrowed_books': '9'},
      {'name': 'User 4', 'id': '004', 'borrowed_books': '1'},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('View Users')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]['name'] ?? ''),
            subtitle: Text(
              'ID: ${users[index]['id'] ?? ''}, Borrowed Books: ${users[index]['borrowed_books'] ?? ''}',
            ),
            onTap: () {
              Navigator.pushNamed(context, '/user_details',
                  arguments: users[index]);
            },
          );
        },
      ),
    );
  }
}
