import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'language_event.dart';
import 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  IRepository _repository;

  LanguageBloc(this._repository) : super(LanguageState.init());

  @override
  Stream<LanguageState> mapEventToState(
    LanguageEvent event,
  ) async* {
    if (event is GetAppLanguage) {
      try {
        final data = await _repository.getAppLanguage();
        print('GetAppLanguage $data');
        yield state.rebuild((b) => b..lang = data);
      } catch (e) {
        print('GetAppLanguage Error $e');
        yield state.rebuild((b) => b..lang = 0);
      }
    }

    if (event is SetAppLanguage) {
      final result = await _repository.setAppLanguage(event.language);
    }
  }
}
