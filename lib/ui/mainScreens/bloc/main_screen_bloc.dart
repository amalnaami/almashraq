import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/mainScreens/bloc/main_screen_event.dart';
import 'package:maktabeh_app/ui/mainScreens/bloc/main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  IRepository _repository;

  MainScreenBloc(this._repository) : super(MainScreenState.init());

  @override
  Stream<MainScreenState> mapEventToState(
      MainScreenEvent event,
      ) async* {
    if (event is ClearState) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ''
        ..success = false);
    }
    if (event is GetAllBooks) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.getAllBooks();
        print('GetCategories $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..books.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    }

  }
}
