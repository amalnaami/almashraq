import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'books_by_category_event.dart';
import 'books_by_category_state.dart';

class BooksByCategoryBloc extends Bloc<BooksByCategoryEvent, BooksByCategoryState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 1;
  BooksByCategoryBloc(this._repository) : super(BooksByCategoryState.init());

  @override
  Stream<BooksByCategoryState> mapEventToState(
    BooksByCategoryEvent event,
  ) async* {
    if(event is GetNextPage) {
      try {
        if(currentPage <= lastPage) {
          yield state.rebuild((b) => b
            ..isLoading = true);
          final res = await _repository.getBooksByCategory(currentPage, event.categoryId);
          lastPage = res.books.paginator.last_page;
          currentPage++;
          yield state.rebuild((b) => b
            ..isLoading = false
            ..allBooks.addAll(res.books.data));
        }
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    }
  }
}
