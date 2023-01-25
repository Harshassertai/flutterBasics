import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpExample {
  String baseUrl = 'http://10.0.2.2:3000/myapp';
  Future<String> getDetails() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body)['message'];
      } else {
        return Future.error('Something Wrong happend');
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
