import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'all_books_event.dart';
import 'all_books_state.dart';

class AllBooksBloc extends Bloc<AllBooksEvent, AllBooksState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 1;
  String sortType;
  FilterData data = FilterData.empty();

  AllBooksBloc(this._repository) : super(AllBooksState.init());

  @override
  Stream<AllBooksState> mapEventToState(
    AllBooksEvent event,
  ) async* {
    if (event is GetNextPage) {
      try {
        if ((data == FilterData.empty() || data == null) && (sortType == null || sortType.isEmpty)) {
          if (currentPage <= lastPage) {
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getAllBookNextPage(currentPage);
            lastPage = res.paginator.last_page;
            currentPage++;
            yield state.rebuild((b) => b
              ..isLoading = false
              ..allBooks.addAll(res.data));
          }
        } else {
          if (currentPage <= lastPage) {
            yield state.rebuild((b) => b..isLoading = true);
            final res = await _repository.getFilteredBooks(
                ISIN: data.ISIN,
                page: currentPage,
                sectionId: data.sectionId,
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
    } else if(event is AddFilter) {
      data = event.data;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..allBooks.replace([]));
      add(GetNextPage());
    } else if(event is AddSort) {
      sortType = event.sortType;
      currentPage = 1;
      lastPage = 1;
      yield state.rebuild((b) => b..allBooks.replace([]));
      add(GetNextPage());
    }
  }
}
