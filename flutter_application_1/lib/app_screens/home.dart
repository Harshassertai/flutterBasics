import 'package:flutter/material.dart';

class MYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 450,
            child: Card(
                child: Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(children: [
                      Image.asset(
                        'Image/image.png',
                        height: 50.0,
                      ),
                      Divider(),
                      Image.asset(
                        'Image/image.png',
                        height: 50.0,
                      ),
                      TextButton(
                        onPressed: () => {print('hello')},
                        child: Text('Click Me'),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.amberAccent,
                            padding: EdgeInsets.all(10.0),
                            textStyle: TextStyle(fontSize: 20.0)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('elevated button clicked');
                        },
                        child: Text('Click Me'),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20.0),
                            textStyle: TextStyle(fontSize: 20.0),
                            backgroundColor: Colors.purpleAccent),
                      ),
                      FloatingActionButton(
                          onPressed: () {
                            print('floating action is clicked');
                          },
                          child: Text('click'))
                    ])))));
  }
}
