import 'package:flutter/material.dart';
import 'login.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),

      body: ListView(
        children: [
          ListTile(
            title: const Text('Edit Profile'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Change Zone'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Change Password'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Change Language'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Manual Entry Attendance'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Help Section'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Handle Settings option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),

          ListTile(
            title: const Text('About Us'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Terms of Use'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Replace MainPage with your actual main page
              );
            },
          )
          // Add more options as needed
        ],
      ),
    );
  }
}
