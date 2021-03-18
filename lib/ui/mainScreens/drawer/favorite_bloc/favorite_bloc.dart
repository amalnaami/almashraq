import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'favorite_event.dart';
import 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  IRepository _repository;


  FavoriteBloc(this._repository) : super(FavoriteState.init());

  @override
  Stream<FavoriteState> mapEventToState(
    FavoriteEvent event,
  ) async* {
    if (event is GetFavorites) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ''
          ..books.replace([]));
        final res =
            await _repository.getFavorite();
        yield state.rebuild((b) => b
          ..isLoading = false..books.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..books.replace([]));
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    }
  }
}
