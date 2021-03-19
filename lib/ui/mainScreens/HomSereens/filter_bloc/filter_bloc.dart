import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'filter_event.dart';
import 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  IRepository _repository;
  bool somethingWentWrong = false;
  FilterData data = FilterData.empty();
  FilterBloc(this._repository) : super(FilterState.init());

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    if (event is GetAuthors) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..authors.replace([])
          ..error = '');
        final ret = await _repository.getAllAuthor();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..authors.replace(ret)
          ..error = '');
        // if(!somethingWentWrong && state.authors.isNotEmpty && state.categories.isNotEmpty) {
        //   yield state.rebuild((b) => b
        //     ..isLoading = false
        //     ..success = true
        //     ..error = '');
        // }
      } catch (e) {
        somethingWentWrong = true;
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    } else if (event is ClearState) {
      somethingWentWrong = false;
      yield state.rebuild((b) => b..error = ''..isLoading = false);
    } else if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);
      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b..error = "");
      }
    } else if (event is GetSections) {
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
        // if(!somethingWentWrong && state.authors.isNotEmpty && state.categories.isNotEmpty) {
        //   yield state.rebuild((b) => b
        //     ..isLoading = false
        //     ..success = true
        //     ..error = '');
        // }
      } catch (e) {
        somethingWentWrong = false;
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    } else if(event is GetFilterData) {
      add(GetSections());
      add(GetAuthors());
    }
  }
}
