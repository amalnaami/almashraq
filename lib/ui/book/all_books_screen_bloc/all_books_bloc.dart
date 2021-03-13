import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'all_books_event.dart';
import 'all_books_state.dart';

class AllBooksBloc extends Bloc<AllBooksEvent, AllBooksState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 1;
  AllBooksBloc(this._repository) : super(AllBooksState.init());

  @override
  Stream<AllBooksState> mapEventToState(
    AllBooksEvent event,
  ) async* {
    if(event is GetNextPage) {
      try {
        if(currentPage <= lastPage) {
          yield state.rebuild((b) => b
            ..isLoading = true);
          final res = await _repository.getAllBookNextPage(currentPage);
          lastPage = res.paginator.last_page;
          currentPage++;
          yield state.rebuild((b) => b
            ..isLoading = false
            ..allBooks.addAll(res.data));
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
