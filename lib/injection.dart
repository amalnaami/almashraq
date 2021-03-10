import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/prefs_helper.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_bloc.dart';
import 'package:maktabeh_app/ui/auth/resetPass/confirm_email_bloc/confirm_email_bloc.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_bloc.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/edit_password_bloc/edit_password_bloc.dart';

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
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl(), sl()));

  /// AppBloc

  sl.registerFactory(() => AppBloc(sl()));
  sl.registerFactory(() => LanguageBloc(sl()));
  sl.registerFactory(() => SettingBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl()));
  sl.registerFactory(() => EditPasswordBloc(sl()));
  sl.registerFactory(() => CategoryBloc(sl()));
  sl.registerFactory(() => ConfirmEmailBloc(sl()));
}
