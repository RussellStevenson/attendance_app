import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,   // top and bottom padding
        ).add(
          const EdgeInsets.symmetric(
            horizontal: 120.0,  // left and right padding
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey[400], // Set the background color of the box
          borderRadius: BorderRadius.circular(10.0), // Set the border radius
        ),
        child: ElevatedButton(
          onPressed: () {
            // Call the checkIn function to update the check-in time
            Provider.of<AttendanceData>(context, listen: false).checkIn();
          },
          child: const Text('Check In'),
        ),
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
