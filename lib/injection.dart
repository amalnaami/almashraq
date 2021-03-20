import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/prefs_helper.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_bloc.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_bloc.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_bloc.dart';
import 'package:maktabeh_app/ui/auth/resetPass/confirm_email_bloc/confirm_email_bloc.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_bloc.dart';
import 'package:maktabeh_app/ui/book/book_screen_bloc/book_screen_bloc.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category_bloc/books_by_category_bloc.dart';
import 'package:maktabeh_app/ui/contact_us/bloc/contact_us_bloc.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_bloc.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/filter_bloc/filter_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/all_quote_bloc/all_quote_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/all_review_bloc/all_review_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_bloc/author_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_books_bloc/author_books_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/add_rate_bloc/add_rate_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/favorite_bloc/favorite_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/rate_bloc/rate_bloc.dart';
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
  sl.registerLazySingleton(() => AllReviewBloc(sl()));
  sl.registerLazySingleton(() => AllQuoteBloc(sl()));
  sl.registerLazySingleton(() => FavoriteBloc(sl()));
  sl.registerLazySingleton(() => ContactUsBloc(sl()));
  sl.registerLazySingleton(() => AboutUsBloc(sl()));
  sl.registerLazySingleton(() => BookScreenBloc(sl()));
  sl.registerLazySingleton(() => RateBloc(sl()));
  sl.registerLazySingleton(() => AddRateBloc(sl()));
  sl.registerLazySingleton(() => FilterBloc(sl()));
  sl.registerLazySingleton(() => CustomDrawerBloc(sl()));
}
