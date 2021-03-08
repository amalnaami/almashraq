import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'setting_event.dart';
import 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  IRepository _repository;

  SettingBloc(this._repository) : super(SettingState.init());

  @override
  Stream<SettingState> mapEventToState(
    SettingEvent event,
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
