import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'categories_event.dart';
import 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  IRepository _repository;
  FilterData data = FilterData.empty();

  CategoriesBloc(this._repository) : super(CategoriesState.init());

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    print('EVENT IS event');
    if (event is GetCategories) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..categories.replace([])
          ..error = '');
        final ret = data == null || data == FilterData.empty()
            ? await _repository.getCategories()
            : await _repository.getCategoryById(sectionId: data.sectionId);
        if(data == null || data == FilterData.empty()) {
          yield state.rebuild((b) => b
            ..isLoading = false
            ..categories.replace(ret)
            ..error = '');
        } else {
          yield state.rebuild((b) => b
            ..isLoading = false
            ..categories.add(ret)
            ..error = '');
        }
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
    } else if (event is AddFilter) {
      data = event.data;
    } else if(event is ClearFilter) {
      data = FilterData.empty();
    }
  }
}
