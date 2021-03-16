import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maktabeh_app/core/config/firebase_notifications.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/prefs_helper.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_bloc.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_bloc.dart';
import 'package:maktabeh_app/ui/auth/resetPass/confirm_email_bloc/confirm_email_bloc.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_bloc.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category_bloc/books_by_category_bloc.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_bloc.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_bloc/author_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_books_bloc/author_books_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_bloc.dart';
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
  sl.registerFactory(() => HomeBloc(sl()));
  sl.registerFactory(() => AllBooksBloc(sl()));
  sl.registerFactory(() => BooksByCategoryBloc(sl()));
  sl.registerFactory(() => SignUpBloc(sl()));
  sl.registerLazySingleton(() => AuthorBloc(sl()));
  sl.registerLazySingleton(() => AuthorBooksBloc(sl()));
  sl.registerLazySingleton(() => CategoriesBloc(sl()));
}
