import 'package:flutter/material.dart';
import 'attendance_record_screen.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  AttendanceRecordScreen()), // Replace MainPage with your actual main page
                      );
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Attendance Record'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle click for Container 2
                      print('Container 2 clicked');
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Container 2'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle click for Container 3
                      print('Container 3 clicked');
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Container 3'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle click for Container 4
                      print('Container 4 clicked');
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Container 4'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle click for Container 5
                      print('Container 5 clicked');
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Container 5'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle click for Container 6
                      print('Container 6 clicked');
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                      margin: const EdgeInsets.all(8.0),
                      child: const Center(
                        child: Text('Container 6'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

