import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'MY APP',
      home: Scaffold(
        body: Center(
            child: Container(
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: Text(
            'This is my first text',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
        )),
      )));
}
