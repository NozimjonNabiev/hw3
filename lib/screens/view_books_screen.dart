import 'package:flutter/material.dart';

class ViewBooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Books'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return _buildBookCard(context, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookCard(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.book),
          ),
          title: Text('Book Title $index'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Author: Author Name $index'),
              Text('About: Description of the book $index'),
              Text('Number: $index'),
            ],
          ),
          onTap: () => _showBookDetails(context, index),
        ),
      ),
    );
  }

  void _showBookDetails(BuildContext context, int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You pressed book $index'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
