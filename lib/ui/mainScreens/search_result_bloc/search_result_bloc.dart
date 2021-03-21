import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/mainScreens/searchScreen.dart';

import 'search_result_event.dart';
import 'search_result_state.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  IRepository _repository;
  SearchData data = SearchData.empty();
  int currentPage = 1;
  int lastPage = 2;

  SearchResultBloc(this._repository) : super(SearchResultState.init());

  @override
  Stream<SearchResultState> mapEventToState(SearchResultEvent event,) async* {
    print('EVENT IS $event');
     if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    } else if (event is PostSearch) {
      if (currentPage > lastPage)
        return;
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = '');
        final ret = await _repository.searchBooks(bookName: event.bookName,
            sectionId: event.sectionId,
            authorId: event.authorId,
            page: currentPage);
        currentPage++;
        lastPage = ret.paginator.last_page;
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..allBooks.addAll(ret.data)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..allBooks.replace([]));
      }
    } else if(event is ClearState) {
       data = SearchData.empty();
       currentPage = 1;
       lastPage = 2;
       yield state.rebuild((b) =>
       b
         ..isLoading = false
         ..error = ''
         ..allBooks.replace([]));
     }
  }
}
