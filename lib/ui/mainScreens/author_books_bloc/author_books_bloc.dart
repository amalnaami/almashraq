import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'author_books_event.dart';
import 'author_books_state.dart';

class AuthorBooksBloc extends Bloc<AuthorBooksEvent, AuthorBooksState> {
  IRepository _repository;

  AuthorBooksBloc(this._repository) : super(AuthorBooksState.init());

  @override
  Stream<AuthorBooksState> mapEventToState(
    AuthorBooksEvent event,
  ) async* {
    if (event is GetAuthorBooks) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..books.replace([])
          ..error = '');
        final ret = await _repository.getBooksForAuthor(event.id);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..books.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..books.replace([]));
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
