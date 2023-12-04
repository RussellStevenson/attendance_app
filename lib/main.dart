import 'package:attendance_app/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'check_in_screen.dart';
import 'inbox_screen.dart';
import 'module_screen.dart';
import 'login.dart';
import 'attendance_record_screen.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => AttendanceData(),
    child: const MyApp(),
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Attendance App',
      home: LoginPage(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const CheckInScreen(),
    const ModuleScreen(),
    const InboxScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0), // Adjust the padding as needed
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Check-In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Module',
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


