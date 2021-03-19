import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'books_by_category_event.dart';
import 'books_by_category_state.dart';

class BooksByCategoryBloc extends Bloc<BooksByCategoryEvent, BooksByCategoryState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 1;
  String sortType;
  FilterData data = FilterData.empty();
  BooksByCategoryBloc(this._repository) : super(BooksByCategoryState.init());

  @override
  Stream<BooksByCategoryState> mapEventToState(
    BooksByCategoryEvent event,
  ) async* {
    if(event is GetNextPage) {
      try {
        if ((data == null) && (sortType == null || sortType.isEmpty)) {
          if (currentPage <= lastPage) {
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getBooksByCategory(currentPage, event.categoryId);
            lastPage = res.books.paginator.last_page;
            currentPage++;
            yield state.rebuild((b) => b
              ..isLoading = false
              ..allBooks.addAll(res.books.data));
          }
        } else {
          if (currentPage <= lastPage) {
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getFilteredBooks(
                ISIN: data.ISIN,
                page: currentPage,
                sectionId: event.categoryId,
                sortType: sortType,
                releaseDate: data.releaseDate,
                authorId: data.authorId,
                bookName: data.bookName);
            lastPage = res.paginator.last_page;
            currentPage++;
            yield state.rebuild((b) => b
              ..isLoading = false
              ..allBooks.addAll(res.data));
          }
        }
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    }else if(event is AddFilter) {
      data = event.data;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..allBooks.replace([]));
    } else if(event is AddSort) {
      sortType = event.sortType;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..allBooks.replace([]));
    }
  }
}
