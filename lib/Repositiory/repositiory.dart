import 'package:bloc_api_todos/Model/todos.dart';
import 'package:bloc_api_todos/Repositiory/todos_api.dart';

class Repository {
  final _todosApiServices = TodosApiServices();

  Future<List<Todos>> fetchTodosfromRepo() async {
    return _todosApiServices.fetchTodos();
  }
}
