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
      try {
        await _repository.setAppLanguage(event.language);
        yield state.rebuild((b) => b..lang = event.language);
      } catch(e) {
        print('ERROR WHILE CHANGE LANGUAGE');
      }
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
          ..quoteUser.replace([]));

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
          ..quoteUser.replace([]));
      }
    }
    if (event is GetUserReview) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..reviewUser.replace([]));

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
          ..reviewUser.replace([]));
      }
    }
    if (event is ChangeStatus) {
      yield state.rebuild((b) => b..logout = false);
    }
    if (event is LogOut) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..success = false
          ..error = ""
          ..logout = false);

        final date = await _repository.logout();
        print('Logout Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..logout = true
          ..success = true
        );
      } catch (e) {
        print('Logout Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..success = false
          ..error = "Something went wrong"
          ..logout = false);
      }
    }

    if (event is ChangeUserName) {
      yield state.rebuild((b) => b..user.user.name = event.value);
    }
    if (event is ChangeEmail) {
      yield state.rebuild((b) => b..user.user.email = event.value);
    }
    if (event is ChangeGender) {
      yield state.rebuild((b) => b..user.user.gender = event.value);
    }
    if (event is ChangeCountry) {
      yield state.rebuild((b) => b..user.user.country = event.value);
    }
    if (event is ChangeTele) {
      yield state.rebuild((b) => b..user.user.mobile = event.value);
    }
    if (event is TryEdit) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..successedit = false);
        final data = await _repository.editUser( event.username, event.email, event.tele, event.gender, event.country_code, event.image);
        await _repository.saveUser(data.data);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..successedit = true);
      } catch (e) {
        print('Error: ${e.toString()}\n');
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = "something went wrong"
          ..successedit = false);
      }
    }
    if (event is GetCountry) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.getCountries();
        print('GetCategories $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..country.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = '${e.toString()}');
      }
    }
  }
}
