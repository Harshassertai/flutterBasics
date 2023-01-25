import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/httpExample.dart';

class MYHomeScreen extends StatelessWidget {
  HttpExample myex = HttpExample();
  final _formKey = GlobalKey<FormState>();
  var name = '';
  var email = '';
  var password = '';

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
        child: ListView(
          children: [
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Name : '),
            //   validator: (value) {
            //     if (value!.isEmpty) {
            //       return 'Please Enter Name';
            //     }
            //   },
            //   controller: nameController,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Email : '),
            //   validator: (value) {
            //     if (value!.isEmpty) {
            //       return 'Please Enter Email';
            //     }
            //   },
            //   controller: emailController,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Password : '),
            //   validator: (value) {
            //     if (value!.isEmpty) {
            //       return 'Please Enter Password';
            //     }
            //   },
            //   controller: passwordController,
            // ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(nameController.text);
                    FutureBuilder<String>(
                      future: myex.getDetails(),
                      builder: (context, snapshot) {
                        return (Text('${snapshot.data}'));
                      },
                    );
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}




// class MYHomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: SizedBox(
//             height: 450,
//             child: Card(
//                 child: Padding(
//                     padding: EdgeInsets.all(40.0),
//                     child: Column(children: [
//                       Image.asset(
//                         'Image/image.png',
//                         height: 50.0,
//                       ),
//                       Divider(),
//                       Image.asset(
//                         'Image/image.png',
//                         height: 50.0,
//                       ),
//                       TextButton(
//                         onPressed: () => {print('hello')},
//                         child: Text('Click Me'),
//                         style: TextButton.styleFrom(
//                             foregroundColor: Colors.black,
//                             backgroundColor: Colors.amberAccent,
//                             padding: EdgeInsets.all(10.0),
//                             textStyle: TextStyle(fontSize: 20.0)),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           print('elevated button clicked');
//                         },
//                         child: Text('Click Me'),
//                         style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.all(20.0),
//                             textStyle: TextStyle(fontSize: 20.0),
//                             backgroundColor: Colors.purpleAccent),
//                       ),
//                       FloatingActionButton(
//                           onPressed: () {
//                             print('floating action is clicked');
//                           },
//                           child: Text('click'))
//                     ])))));
//   }
// }

