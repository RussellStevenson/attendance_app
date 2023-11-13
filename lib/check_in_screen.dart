import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Call the checkIn function to update the check-in time
          Provider.of<AttendanceData>(context, listen: false).checkIn();
        },
        child: Text('Check In'),
      ),
    );
  }
}

// Create a class to manage the attendance data using the Provider package
class AttendanceData with ChangeNotifier {
  List<String> attendanceRecords = [];

  void checkIn() {
    // Get the current time (you may need to import the 'intl' package for formatting)
    String currentTime = DateTime.now().toLocal().toString();

    // Add the check-in time to the list
    attendanceRecords.add(currentTime);

    // Notify listeners to update the UI
    notifyListeners();
  }
}
