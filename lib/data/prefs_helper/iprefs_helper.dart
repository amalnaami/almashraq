import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/user/token.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);
  Future<void> saveUser(UserData user, bool active);
  //Future<void> saveRegisterUser(UserData user);
  Future<String> getToken();
  Future<bool> getIsLogin();

  Future<void> setIsLogin();
}
