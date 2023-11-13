import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'attendance_record_screen.dart';
import 'check_in_screen.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance App'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
        ],
      ),
    );
  }
}

