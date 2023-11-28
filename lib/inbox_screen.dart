import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),
      body: Center(
        child: Text('Inbox Screen'),
      ),
    );
  }
}
