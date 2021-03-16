import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'categories_event.dart';
import 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  IRepository _repository;

  CategoriesBloc(this._repository) : super(CategoriesState.init());

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is GetCategories) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..categories.replace([])
          ..error = '');
        final ret = await _repository.getCategories();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..categories.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..categories.replace([]));
      }

    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    } else if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);
      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b..error = "");
      }
    }
  }
}
