import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/app_screens/home.dart';
import 'package:flutter_application_1/app_screens/logic.dart';
import 'package:flutter_application_1/app_screens/Stateful.dart';
import 'package:flutter_application_1/DioExample.dart';
import 'package:flutter_application_1/httpExample.dart';

/// More examples see https://github.com/flutterchina/dio/tree/master/example
/// More examples see https://github.com/flutterchina/dio/tree/master/example
// void main() async {
//   var dio = Dio();
//   final response = await dio.get('https://google.com');
//   print(response.data);
// }

void main() async {
  // try {
  //   var response = await Dio().get('http://10.0.2.2:3000/myapp');
  //   print(response);
  // } catch (e) {
  //   print(e);
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  HttpExample httpExampleService = HttpExample();
  var y;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MY APP',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurpleAccent,
              title: Text(
                'My App',
                style: TextStyle(color: Colors.black38),
              ),
            ),
            // backgroundColor: Colors.pinkAccent,
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

            // body: MYHomeScreen()));
            body: Container(
              child: FutureBuilder<String>(
                future: httpExampleService.getDetails(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                        child: Center(
                      child: Text('${snapshot.data}'),
                      //   child: ListView.builder(
                      //       itemCount: snapshot.data!.length,
                      //       itemBuilder: (context, int index) => Container(
                      //             padding: EdgeInsets.symmetric(
                      //                 vertical: 40.0, horizontal: 20.0),
                      //             child: Center(
                      //               child: Text(
                      //                 snapshot.data![index],
                      //                 style: TextStyle(
                      //                     color: Colors.amber, fontSize: 40.0),
                      //               ),
                      //             ),
                      //           )),
                      // ),
                    ));
                  } else {
                    return Text('NO Data');
                  }
                },
              ),
            )));
    // body: Logic()));
    // body: StatefulPage()));
  }
}
