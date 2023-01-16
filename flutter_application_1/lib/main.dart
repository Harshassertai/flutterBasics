// import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_application_1/app_screens/home.dart';
// import 'package:flutter_application_1/app_screens/logic.dart';
// import 'package:flutter_application_1/app_screens/Stateful.dart';

/// More examples see https://github.com/flutterchina/dio/tree/master/example
/// More examples see https://github.com/flutterchina/dio/tree/master/example
void main() async {
  var dio = Dio();
  final response = await dio.get('https://google.com');
  print(response.data);
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       title: 'MY APP',
  //       home: Scaffold(
  //           appBar: AppBar(
  //             backgroundColor: Colors.deepPurpleAccent,
  //             title: Text(
  //               'My App',
  //               style: TextStyle(color: Colors.black38),
  //             ),
  //           ),
  //           backgroundColor: Colors.pinkAccent,
            // body: Center(
            //     child: Container(
            //   decoration: BoxDecoration(color: Colors.blueAccent),
            //   child: Text(
            //     'This is my first text',
            //     textDirection: TextDirection.ltr,
            //     style: TextStyle(
            //       fontSize: 50.0,
            //     ),
            //   ),
            // )),
            // body: Image(
            //   image: AssetImage('Image/image.png'),
            //   fit: BoxFit.cover,
            // ),
            // body: Image(
            //     image: NetworkImage(
            //         'https://cdn.pixabay.com/photo/2022/08/13/18/25/river-7384240_960_720.jpg'),
            //     fit: BoxFit.cover),
            // body: TextField()
            // body: GridView.extent(
            //   maxCrossAxisExtent: 100,
            //   mainAxisSpacing: 10,
            //   children: [
            //     Text("Hello"),
            //     Text("hi"),
            //     Text("Hello"),
            //     Text("hi"),
            //     Text("Hello"),
            //     Text("hi"),
            //     Text("Hello"),
            //     Text("hi")
            //   ],
            // ),
            // body: ListView(
            //   children: [
            //     ListTile(
            //       leading: Image.asset('Image/image.png'),
            //       title: const Text('Image Title'),
            //       subtitle: const Text('Description'),
            //       trailing: Icon(Icons.delete),
            //     ),
            //     ListTile(
            //       leading: Image.asset('Image/image.png'),
            //       title: const Text('Image Title'),
            //       subtitle: const Text('Description'),
            //       trailing: Icon(Icons.delete),
            //     )
            //   ],
            //
            // body: MYHomeScreen()));
            // body: Logic()));
//             body: StatefulPage()));
//   }
// }
