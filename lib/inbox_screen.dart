import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),
      body: const Center(
        child: Text('Inbox Screen'),
      ),
    );
  }
}
