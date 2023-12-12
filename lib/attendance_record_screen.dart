import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'check_in_screen.dart';
import 'module_screen.dart';

class AttendanceRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Record'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.pop(context);
          },
        ),
      ),
      body: AttendanceRecordList(),
    );
  }
}

class AttendanceRecordList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AttendanceData>(
      builder: (context, attendanceData, child) {
        return ListView.builder(
          itemCount: attendanceData.attendanceRecords.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(attendanceData.attendanceRecords[index]),
            );
          },
        );
      },
    );
  }
}



