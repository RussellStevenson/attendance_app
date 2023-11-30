import 'package:flutter/material.dart';
import 'login.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
        backgroundColor: Colors.grey, // Set the navigation bar color
      ),

      body: ListView(
        children: [
          ListTile(
            title: Text('Edit Profile'),
            onTap: () {
              // Handle Edit Profile option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Handle Settings option
              Navigator.of(context).pop(); // Close the drawer or navigate
            },
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()), // Replace MainPage with your actual main page
              );
            },
          )
          // Add more options as needed
        ],
      ),
    );
  }
}
