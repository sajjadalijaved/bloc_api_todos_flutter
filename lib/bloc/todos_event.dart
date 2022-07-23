part of 'todos_bloc.dart';

@immutable
abstract class TodosEvent {}

class FetchTodosEvent extends TodosEvent {}

class FetchTodoEvent extends TodosEvent {}
