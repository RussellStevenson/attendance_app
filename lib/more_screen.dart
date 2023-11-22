import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              Navigator.of(context).pop();
            },
          )
          // Add more options as needed
        ],
      ),
    );
  }
}
