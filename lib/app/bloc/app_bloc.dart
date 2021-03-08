import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  IRepository _repository;

  AppBloc(this._repository) : super(AppState.init());

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is ClearError) {}
    else if(event is IniEvent) {
      final lang = await _repository.getAppLanguage();
      yield state.rebuild((b) => b..appLanguage = lang);
      changeAppLanguage(state.appLanguage);
    }
  }
}
