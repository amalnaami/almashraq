import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _repository;

  HomeBloc(this._repository) : super(HomeState.init());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is GetHomePage) {
      yield state.rebuild(((b) => b
        ..isLoading = false
        ..error = ''
        ..latestBooks.replace([])
        ..mostReviewedBooks.replace([])
        ..featuredBooks.replace([])
        ..allBooks.replace([])
        ..authors.replace([])
        ..todayQuote = null
        ..todayReview = null));
      add(GetCategories());
      add(GetMostReviewedBooks());
      add(GetAllBooks());
      add(GetFeaturedBook());
      add(GetLatestBooks());
      add(GetTodayQuote());
      add(GetTodayReview());
      add(GetFamousAuthors());
    } else if (event is GetMostReviewedBooks) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..mostReviewedBooks.replace([]));
        final res = await _repository.getMostReviewedBooks();
        print(res[0]);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..mostReviewedBooks.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..mostReviewedBooks.replace([]));
      }
    } else if (event is GetAllBooks) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..allBooks.replace([]));
        final res = await _repository.getAllBooks();
        print(res[0]);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..allBooks.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..allBooks.replace([]));
      }
    } else if (event is GetLatestBooks) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..latestBooks.replace([]));
        final res = await _repository.getLatestBooks();
        print(res[0]);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..latestBooks.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..latestBooks.replace([]));
      }
    } else if (event is GetTodayQuote) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..todayQuote = null);
        final res = await _repository.getTodayQuotes();

        yield state.rebuild((b) => b
          ..isLoading = false
          ..todayQuote.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..todayQuote = null);
      }
    } else if (event is GetTodayReview) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..todayReview = null);
        final res = await _repository.getTodayReview();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..todayReview.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..todayReview = null);
      }
    } else if (event is GetFamousAuthors) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..authors.replace([]));
        final res = await _repository.getFamousAuthors();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..authors.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..authors.replace([]));
      }
    } else if (event is GetFeaturedBook){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..featuredBooks.replace([]));
        final res = await _repository.getFeaturedBooks();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..featuredBooks.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..featuredBooks.replace([]));
      }
    } else if(event is GetCategories) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..categories.replace([]));
        final res = await _repository.getCategories();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..categories.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..categories.replace([]));
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    }
  }
}
