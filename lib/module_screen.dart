import 'package:flutter/material.dart';
import 'attendance_record_screen.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({Key? key}) : super(key: key);

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
            // First Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(context, 'Attendance Record', Icons.event),
                buildContainer(context, 'Container 2', Icons.star),
              ],
            ),
            // Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(context, 'Container 3', Icons.access_alarm),
                buildContainer(context, 'Container 4', Icons.airplanemode_active),
              ],
            ),
            // Third Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(context, 'Container 5', Icons.attach_money),
                buildContainer(context, 'Container 6', Icons.cake),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(BuildContext context, String text, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>  AttendanceRecordScreen()),
          );
        },
        child: Container(
          height: 150.0,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white, // Set the background color to white
            borderRadius: BorderRadius.circular(15.0), // Set the circular border radius
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.blue, // Set the color of the icon
              ),
              const SizedBox(height: 8.0),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue, // Set the color of the text
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




