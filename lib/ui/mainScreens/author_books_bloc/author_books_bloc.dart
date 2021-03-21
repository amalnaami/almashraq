import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'author_books_event.dart';
import 'author_books_state.dart';

class AuthorBooksBloc extends Bloc<AuthorBooksEvent, AuthorBooksState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 1;
  String sortType;
  FilterData data = FilterData.empty();
  AuthorBooksBloc(this._repository) : super(AuthorBooksState.init());

  @override
  Stream<AuthorBooksState> mapEventToState(
    AuthorBooksEvent event,
  ) async* {
    print('EVVENT IS $event');
    if (event is GetAuthorBooks) {
      try {
        if ((data == null) && (sortType == null || sortType.isEmpty)) {
          print('ss');
          if (currentPage <= lastPage) {
            if(currentPage == 1 && lastPage == 1)
              yield state.rebuild((b) => b..isLoading = true..books.replace([]));
            else
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getBooksForAuthor(currentPage, event.id);
            lastPage = res.paginator.last_page;
            currentPage++;
            yield state.rebuild((b) => b
              ..isLoading = false
              ..books.addAll(res.data));
          }
        } else {
          print('ELSE');
          print('$currentPage');
          print('$lastPage');
          if (currentPage <= lastPage) {
            if(currentPage == 1 && lastPage == 1)
              yield state.rebuild((b) => b..isLoading = true..books.replace([]));
            else
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getFilteredBooks(
                ISIN: data.ISIN,
                page: currentPage,
                sectionId: data.sectionId,
                sortType: sortType,
                releaseDate: data.releaseDate,
                authorId: event.id,
                bookName: data.bookName);
            lastPage = res.paginator.last_page;
            currentPage++;
            yield state.rebuild((b) => b
              ..isLoading = false
              ..books.addAll(res.data));
          }
        }
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false);
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
    }else if(event is AddFilter) {
      data = event.data;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..books.replace([]));
    } else if(event is AddSort) {
      sortType = event.sortType;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..books.replace([]));
    } else if(event is CleatFilter) {
      data = FilterData.empty();
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..books.replace([]));
    }
  }
}
