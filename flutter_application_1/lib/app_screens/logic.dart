import 'package:flutter/material.dart';

class Logic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('The Sum is ${addNumber(10, 20)}'),
    );
  }

  int addNumber(a, b) {
    return a + b;
  }
}
