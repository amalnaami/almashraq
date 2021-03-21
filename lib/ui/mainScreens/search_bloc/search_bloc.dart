import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  IRepository _repository;
  FilterData data = FilterData.empty();
  int currentPage = 1;
  int lastPage = 2;

  SearchBloc(this._repository) : super(SearchState.init());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event,) async* {
    print('EVENT IS event');
    if (event is GetCategories) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..categories.replace([])
          ..error = '');
        final ret = await _repository.getCategories();
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..categories.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..categories.replace([]));
      }
    } else if (event is ClearState) {
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
          ..allBooks.replace(ret.data)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..allBooks.replace([]));
      }
    } else if (event is GetAuthor) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..authors.replace([])
          ..error = '');
        final ret = await _repository.getAllAuthor();
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..authors.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    }
  }
}
