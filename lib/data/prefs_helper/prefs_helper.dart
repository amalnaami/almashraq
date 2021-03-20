import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/core/constent.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'iprefs_helper.dart';

class PrefsHelper implements IPrefsHelper {
  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }
  @override
  Future<int> getAppLanguage() async {
    return (await getPrefs()).getInt(APP_LANGUAGE) ?? AppLanguageKeys.EN;
  }

  @override
  Future<void> setAppLanguage(int value) async{
    (await getPrefs()).setInt(APP_LANGUAGE,value);
  }

  @override
  Future<String> getToken() async {
    return (await getPrefs()).getString(TOKEN);
  }

  @override
  Future<void> saveUser(UserData user,bool active) async {
    print('SAVING DATA');
    print(user.user.image);
    print(user.user.email);
    print(user.user.name);
    print(user.user.country);
    (await getPrefs()).setString(TOKEN, user.access_token);
    (await getPrefs()).setString(IMAGE, user.user.image);
    (await getPrefs()).setString(EMAIL, user.user.email);
    (await getPrefs()).setString(USERNAME, user.user.username);
    (await getPrefs()).setInt(ID, user.user.id);
    (await getPrefs()).setString(NAME, user.user.name);
    (await getPrefs()).setString(COUNTRY, user.user.country);
    if(active){
      (await getPrefs()).setBool(IS_LOGIN, true);
    }
  }

  // @override
  // Future<void> saveRegisterUser(UserData user) async {
  //   (await getPrefs()).setString(TOKEN, user.access_token);
  //   (await getPrefs()).setString(IMAGE, user.user.image);
  //   (await getPrefs()).setString(EMAIL, user.user.email);
  //   (await getPrefs()).setString(USERNAME, user.user.username);
  //   (await getPrefs()).setInt(ID, user.user.id);
  // }


  @override
  Future<bool> getIsLogin() async {
    return (await getPrefs()).containsKey(TOKEN);
  }


  @override
  Future<void> logout() async{
    (await getPrefs()).clear();
  }

  @override
  Future<String> getCountry() async{
    return (await getPrefs()).getString(COUNTRY);

  }

  @override
  Future<String> getEmail() async{
    return (await getPrefs()).getString(EMAIL);

  }

  @override
  Future<String> getImage() async{
    return (await getPrefs()).getString(IMAGE);

  }

  @override
  Future<String> getName() async{
    return (await getPrefs()).getString(NAME);

  }

}
