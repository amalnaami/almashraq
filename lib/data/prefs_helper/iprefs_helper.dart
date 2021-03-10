import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);
  Future<void> saveUser(LoginModel user);
  Future<String> getToken();
}
