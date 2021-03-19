import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'author_event.dart';
import 'author_state.dart';

class AuthorBloc extends Bloc<AuthorEvent, AuthorState> {
  IRepository _repository;
  FilterData data;
  String sortType = 'asc';

  AuthorBloc(this._repository) : super(AuthorState.init());

  @override
  Stream<AuthorState> mapEventToState(
    AuthorEvent event,
  ) async* {
    print('NEW EVENT $event');
    if (event is GetAuthors) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..authors.replace([])
          ..error = '');
        final ret = (data == null || data == FilterData.empty()
            ? await _repository.getAllAuthor()
            : await _repository.getFilteredAuthors(
                sectionId: data.sectionId, name: data.authorName));
        print('RET OS $ret');
        print(data == null); print(data == FilterData.empty());
        yield state.rebuild((b) => b
          ..isLoading = false
          ..authors.replace(sortType == 'asc' ? ret : ret.reversed)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..authors.replace([]));
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
      add(GetAuthors());
    } else if (event is AddSort) {
      sortType = event.sortType;
      add(GetAuthors());
    } else if(event is ClearFilter) {
      data = FilterData.empty();
    } else if(event is Clear) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ''
        ..authors.replace([])
        ..isLogin = false);
    }
  }
}
