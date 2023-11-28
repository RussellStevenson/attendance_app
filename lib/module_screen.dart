import 'package:flutter/material.dart';

class ModuleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 1'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 2'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 3'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 4'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orange,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 5'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.purple,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Container 6'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
