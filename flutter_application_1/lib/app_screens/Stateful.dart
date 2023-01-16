import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  String str = "";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        TextField(
          // onSubmitted: (value) {
          //   print(value);
          //   // str = value; //This is wrong way to set value use setState() method instead
          //   setState(() {
          //     str = value;
          //   });
          // },
          onChanged: (value) {
            print(value);
            // str = value; //This is wrong way to set value use setState() method instead
            setState(() {
              str = value;
            });
          },
        ),
        Text(str)
      ],
    ));
  }
}
