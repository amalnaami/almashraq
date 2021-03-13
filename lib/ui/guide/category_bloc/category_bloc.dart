import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  IRepository _repository;

  CategoryBloc(this._repository) : super(CategoryState.init());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is GetCategories) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.getCategories();
        print('GetCategories $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..categories.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..successAdding = false
        ..error = ''
        ..categories.replace([]));
    } else if(event is InsertCategories) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final res = await _repository.insertCategories(event.selectedCategories);
        print(res);
        print('DONE');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..successAdding = true);
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    }
  }
}
