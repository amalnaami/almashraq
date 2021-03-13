
import 'package:maktabeh_app/data/db_helper/idp_helper.dart';
import 'package:maktabeh_app/data/http_helper/ihttpe_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
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
    await _iprefHelper.saveUser(res.data);
    return true;
  }

  @override
  Future<bool> updatePassword(String password) async {
    return await _ihttpHelper.updatePassword(password, (await _iprefHelper.getToken()));
  }

  @override
  Future<bool> insertCategories(List<int> categories) async {
    await _ihttpHelper.insertCategories(categories, await _iprefHelper.getToken());
    //await _iDbHelper.insertCategory(categories);
  }

  @override
  Future<Quote> getTodayQuotes() async {
   return await _ihttpHelper.getTodayQuotes();
  }

  @override
  Future<Review> getTodayReview() async {
    return await _ihttpHelper.getTodayReview();
  }

  @override
  Future<BuiltList<Author>> getFamousAuthors() async {
    return await _ihttpHelper.getFamousAuthors();
  }

  @override
  Future<BuiltList<Book>> getAllBooks() async{
    return await _ihttpHelper.getAllBooks();
  }

  @override
  Future<BuiltList<Book>> getFeaturedBooks() async {
    return await _ihttpHelper.getFeaturedBooks(await _iprefHelper.getToken());
  }

  @override
  Future<BuiltList<Book>> getLatestBooks() async {
    return await _ihttpHelper.getLatestBooks();
  }

  @override
  Future<BuiltList<Book>> getMostReviewedBooks() async {
    return await _ihttpHelper.getMostReviewedBooks();
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
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String countryCode)async {
    final user = await _ihttpHelper.register(name, username, email, password, tele, gender, countryCode);
    // final save = await _iprefHelper.saveUser(user.data, user.token,false);
    await _iprefHelper.saveUser(user.data);
    return user;
  }

  @override
  Future<BaseBook> getAllBookNextPage(int page) async {
    return await _ihttpHelper.getAllBookNextPage(page);
  }

  @override
  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId) async {
    return await _ihttpHelper.getBooksByCategory(page, categoryId);
  }
}
