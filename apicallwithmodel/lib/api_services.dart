import 'dart:developer';

import 'package:apicallwithmodel/model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Welcome>?> getData() async {
    try {
      var responce = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (responce.statusCode == 200) {
        List<Welcome> _data = welcomeFromJson(responce.body);
        return _data;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
