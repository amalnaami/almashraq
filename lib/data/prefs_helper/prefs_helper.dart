import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/core/constent.dart';
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


}
