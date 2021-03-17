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
    if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);
      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b..error = "");
      }
    }
    if (event is GetProfileData) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..profileUser = null);

        final date = await _repository.getUserProfile();
        print('GetProfile Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..profileUser.replace(date));
      } catch (e) {
        print('GetProfile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..profileUser = null);
      }
    }
    if (event is GetUserQuote) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..quoteUser = null);

        final date = await _repository.getUserQuote();
        print('GetProfile Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..quoteUser.replace(date));
      } catch (e) {
        print('GetProfile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..quoteUser = null);
      }
    }
    if (event is GetUserReview) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..reviewUser = null);

        final date = await _repository.getUserReviews();
        print('GetProfile Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..reviewUser.replace(date));
      } catch (e) {
        print('GetProfile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..reviewUser = null);
      }
    }
  }
}
