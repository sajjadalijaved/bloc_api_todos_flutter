import 'dart:convert';

import 'package:bloc_api_todos/Model/todos.dart';

import 'package:http/http.dart';

extension Success on Response {
  bool get isSuccessful => statusCode == 200;
}

class TodosApiServices {
  final baseURL = 'https://jsonplaceholder.typicode.com';
  final baseURI = '/todos';

  Future<List<Todos>> fetchTodos() async {
    var response = await get(Uri.parse(baseURL + baseURI));

    List list = jsonDecode(response.body);
    return list.map((e) => Todos.fromMap(e)).toList();
  }
}
