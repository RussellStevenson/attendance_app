import 'package:flutter/material.dart';

class ModuleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Module'),
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
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 1'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 2'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 3'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 4'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 5'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Container 6'),
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

