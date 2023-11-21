import 'package:attendance_app/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'attendance_record_screen.dart';
import 'check_in_screen.dart';
import 'inbox_screen.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => AttendanceData(),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    CheckInScreen(),
    AttendanceRecordScreen(),
    InboxScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance App'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure items fit within the screen
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Check-In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Attendance Record',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_control_outlined),
            label: 'More',
          ),
        ],
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

