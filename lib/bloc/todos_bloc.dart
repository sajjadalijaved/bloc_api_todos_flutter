import 'package:bloc/bloc.dart';
import 'package:bloc_api_todos/Model/todos.dart';
import 'package:bloc_api_todos/Repositiory/repositiory.dart';
import 'package:meta/meta.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final Repository repository = Repository();
  TodosBloc() : super(TodoInitialstate()) {
    on<FetchTodoEvent>((event, emit) async {
      emit.call(TodoLoadingState());
      try {
        List<Todos> todo = await repository.fetchTodosfromRepo();
        emit(TodosLoadedState(todo));
      } catch (e) {
        emit(TodoErrorState(e.toString()));
      }
    });
  }
}
