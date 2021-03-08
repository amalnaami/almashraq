import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/prefs_helper.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';

import 'app/bloc/app_bloc.dart';
import 'core/constent.dart';
import 'data/db_helper/db_helper.dart';
import 'data/http_helper/http_helper.dart';
import 'data/http_helper/ihttpe_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';
import 'data/db_helper/idp_helper.dart';

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  sl.registerLazySingleton<IDbHelper>(() => DbHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper());
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IRepository>(() => Repository(sl()));

  /// AppBloc

  sl.registerFactory(() => AppBloc(sl()));
  sl.registerFactory(() => LanguageBloc(sl()));
  sl.registerFactory(() => SettingBloc(sl()));
}
