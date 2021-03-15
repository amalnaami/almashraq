import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'author_event.dart';
import 'author_state.dart';

class AuthorBloc extends Bloc<AuthorEvent, AuthorState> {
  IRepository _repository;

  AuthorBloc(this._repository) : super(AuthorState.init());

  @override
  Stream<AuthorState> mapEventToState(
    AuthorEvent event,
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
    }
  }
}
