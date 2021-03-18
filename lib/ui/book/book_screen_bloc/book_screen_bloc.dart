import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/model/book/book.dart';

import 'book_screen_event.dart';
import 'book_screen_state.dart';

class BookScreenBloc extends Bloc<BookScreenEvent, BookScreenState> {
  IRepository _repository;

  BookScreenBloc(this._repository) : super(BookScreenState.init());

  @override
  Stream<BookScreenState> mapEventToState(
    BookScreenEvent event,
  ) async* {
    if (event is GetFavorite) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..isFavorite = false
          ..error = '');
        final ret = await _repository.getFavorite();
        bool ok = false;
        for (Book b in ret) ok |= (b.id == event.id);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isFavorite = ok
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
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
    } else if (event is ModifyFavorite) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = '');
        bool ret;
        if (event.isFavorite)
          ret = await _repository.removeFromFavorite(event.id);
        else
          ret = await _repository.addToFavorite(event.id);
        add(GetFavorite((b) => b..id = event.id));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    }
  }
}
