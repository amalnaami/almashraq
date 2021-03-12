
import 'package:maktabeh_app/data/db_helper/idp_helper.dart';
import 'package:maktabeh_app/data/http_helper/ihttpe_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/model/all_books_model/books_details.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/user/user_model.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IPrefsHelper _iprefHelper;
  IHttpHelper _ihttpHelper;
  IDbHelper _iDbHelper;

  Repository(this._iprefHelper, this._ihttpHelper, this._iDbHelper);

  @override
  Future<int> getAppLanguage() async {
    return await _iprefHelper.getAppLanguage();
  }

  @override
  Future<void> setAppLanguage(int value) async {
    await _iprefHelper.setAppLanguage(value);
  }

  @override
  Future<bool> forgetPassword(String email) async {
    return await _ihttpHelper.forgetPassword(email);
  }

  @override
  Future<BuiltList<Category>> getCategories() async {
    return await _ihttpHelper.getCategories();
  }

  @override
  Future<bool> login(String userName, String password) async {
    final res = await _ihttpHelper.login(userName, password);
    print(res.user);
    await _iprefHelper.saveUser(res);
    return true;
  }

  @override
  Future<bool> updatePassword(String password) async {
    return await _ihttpHelper.updatePassword(password, (await _iprefHelper.getToken()));
  }

  @override
  Future<void> insertCategories(List<int> categories) async {
    await _iDbHelper.insertCategory(categories);
  }

  @override
  Future<BuiltList<CountryModel>> getCountries()async {
    // TODO ==> change language to dynamic
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getCountries(language);
  }
  @override
  Future<BuiltList<BooksDetails>> getAllBooks()async {
    // TODO ==> change language to dynamic
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getAllBooks(language);
  }

  @override
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String country_code)async {
    final user = await _ihttpHelper.register(name, username, email, password, tele, gender, country_code);
    // final save = await _iprefHelper.saveUser(user.data, user.token,false);
    return user;
  }
}
