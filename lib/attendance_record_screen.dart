import 'package:flutter/material.dart';

class AttendanceRecordScreen extends StatelessWidget {
  const AttendanceRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Record'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),
      body: const Center(
        child: Text('Attendance Record Screen'),
      ),
    );
  }
}