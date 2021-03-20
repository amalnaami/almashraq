import 'dart:io';

import 'package:maktabeh_app/core/config/firebase_notifications.dart';
import 'package:maktabeh_app/data/db_helper/idp_helper.dart';
import 'package:maktabeh_app/data/http_helper/ihttpe_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';
import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
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
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getCategories(language);
  }

  @override
  Future<bool> login(String userName, String password) async {
    final res = await _ihttpHelper.login(
        userName, password, await PushNotificationsManager().getToken());
    print(res.data.user.image);
    print(res.data.user.email);
    print(res.data.user.name);
    print(res.data.user.country);
    await _iprefHelper.saveUser(res.data, true);
    return true;
  }

  @override
  Future<bool> updatePassword(String password) async {
    return await _ihttpHelper.updatePassword(
        password, (await _iprefHelper.getToken()));
  }

  @override
  Future<bool> insertCategories(List<int> categories) async {
    await _ihttpHelper.insertCategories(
        categories, await _iprefHelper.getToken());
    //await _iDbHelper.insertCategory(categories);
  }

  @override
  Future<Quote> getTodayQuotes() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getTodayQuotes(language);
  }

  @override
  Future<Review> getTodayReview() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getTodayReview(language);
  }

  @override
  Future<BuiltList<Author>> getFamousAuthors() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getFamousAuthors(language);
  }

  @override
  Future<BuiltList<Book>> getAllBooks() async {
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
  Future<BuiltList<Book>> getFeaturedBooks() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getFeaturedBooks(
        await _iprefHelper.getToken(), language);
  }

  @override
  Future<BuiltList<Book>> getLatestBooks() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getLatestBooks(language);
  }

  @override
  Future<BuiltList<Book>> getMostReviewedBooks() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getMostReviewedBooks(language);
  }

  @override
  Future<BuiltList<CountryModel>> getCountries() async {
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
  Future<UserModel> register(String name, String username, String email,
      String password, String tele, String gender, String countryCode, File image) async {
    final user = await _ihttpHelper.register(name, username, email, password, tele, gender, countryCode, image, await PushNotificationsManager().getToken());
    // final save = await _iprefHelper.saveUser(user.data, user.token,false);
    await _iprefHelper.saveUser(user.data, true);
    return user;
  }

  @override
  Future<BaseBook> getAllBookNextPage(int page) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getAllBookNextPage(page, language);
  }

  @override
  Future<BookByCategoryModel> getBooksByCategory(
      int page, int categoryId) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getBooksByCategory(page, categoryId, language);
  }

  @override
  Future<BookByCategoryModel> getSectionByBook(
      int withBooks, int sectionId) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getSectionByBook(withBooks, sectionId, language);
  }

  @override
  Future<bool> getIsLogin() async {
    return await _iprefHelper.getIsLogin();
  }

  @override
  Future<void> saveUser(UserData user) async {
    await _iprefHelper.saveUser(user, true);
  }

  @override
  Future<BuiltList<Quote>> getQuotesByBook(int bookId) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getQuotesByBook(bookId, language);
  }

  @override
  Future<BuiltList<Review>> getReviewByBook(int bookId) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getReviewByBook(bookId, language);
  }

  @override
  Future<BuiltList<Author>> getAllAuthor() async {
    return await _ihttpHelper
        .getAllAuthor(await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<BaseBook> getBooksForAuthor(int page, int id) async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    return await _ihttpHelper.getBooksForAuthor(page, id, language);
  }

  @override
  Future<bool> addQuote(String text, int bookId) async {
    return await _ihttpHelper.addQuote(
        text, bookId, (await _iprefHelper.getToken()));
  }

  @override
  Future<bool> addReview(String text, int rating, int bookId) async {
    return await _ihttpHelper.addReview(
        text, rating, bookId, (await _iprefHelper.getToken()));
  }

  @override
  Future<BuiltList<Review>> getAllReviews() async {
    return await _ihttpHelper
        .getAllReviews(await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<BuiltList<Quote>> getAllQuotes() async {
    return await _ihttpHelper
        .getAllQuotes(await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<ProfileModel> getUserProfile() async {
    return await _ihttpHelper.getUserProfile(await _iprefHelper.getToken(),
        await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<BuiltList<ReviewQuoteUserModel>> getUserQuote() async {
    return await _ihttpHelper.getUserQuote(await _iprefHelper.getToken(),
        await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<BuiltList<ReviewQuoteUserModel>> getUserReviews() async {
    return await _ihttpHelper.getUserReviews(await _iprefHelper.getToken(),
        await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<bool> addToFavorite(int bookId) async {
    return await _ihttpHelper.addToFavorite(await _iprefHelper.getToken(),
        bookId, await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<bool> contactUs(String name, String email, String message) async {
    return await _ihttpHelper.contactUs(name, email, message);
  }

  @override
  Future<AboutUs> getAboutUs() async {
    return await _ihttpHelper
        .getAboutUs(await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<bool> removeFromFavorite(int bookId) async {
    return await _ihttpHelper.removeFromFavorite(await _iprefHelper.getToken(),
        bookId, await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<BuiltList<Book>> getFavorite() async {
    return await _ihttpHelper.getFavorite(await _iprefHelper.getToken(),
        await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<AppRate> getAppRate() async {
    return await _ihttpHelper.getAppRate();
  }

  @override
  Future<bool> rateTheApp(int rate, String note) async {
    return await _ihttpHelper.rateTheApp(
        await _iprefHelper.getToken(), rate, note);
  }

  @override
  Future<bool> logout() async {
    final data = await _ihttpHelper.logout(await _iprefHelper.getToken());
    await _iprefHelper.logout();
    print('LOGout repo');
    return data;
  }
  @override
  Future<UserModel> editUser( String username, String email, String tele, String gender, String country_code, File image) async{
    final data = await _ihttpHelper.editUser( username, email, tele, gender, country_code, image,  await _iprefHelper.getToken(), await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
 // final save = await _iprefHelper.saveUser(null, false);
    final save = await _iprefHelper.saveUser(data.data, true);
    return data;
  }

  @override
  Future<BaseBook> getFilteredBooks(
      {int page,
      String bookName,
      String ISIN,
      String releaseDate,
      int authorId,
      int sectionId,
      String sortType}) async {
    return await _ihttpHelper.getFilteredBooks(
        bookName: bookName,
        ISIN: ISIN,
        releaseDate: releaseDate,
        authorId: authorId,
        sectionId: sectionId,
        sortType: sortType,
        language: await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar',
        page: page);
  }

  @override
  Future<BuiltList<Author>> getFilteredAuthors(
      {int sectionId, String name}) async {
    return await _ihttpHelper.getFilteredAuthors(
        sectionId: sectionId,
        name: name,
        language: await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar');
  }

  @override
  Future<Category> getCategoryById({int sectionId}) async {
    return await _ihttpHelper.getCategoryById(
      sectionId: sectionId,
      language: await _iprefHelper.getAppLanguage() == 1 ? 'en' : 'ar',
    );
  }

  @override
  Future<String> getCountry() async {
    return await _iprefHelper.getCountry();
  }

  @override
  Future<String> getEmail() async {
    return await _iprefHelper.getEmail();
  }

  @override
  Future<String> getImage() async {
    return await _iprefHelper.getImage();
  }

  @override
  Future<String> getName() async {
    return await _iprefHelper.getName();
  }
  @override
  Future<bool> socialMediaLogin(String accessToken, String typeSocial) async {
    final res = await _ihttpHelper.socialMediaLogin(
        accessToken, await PushNotificationsManager().getToken(), typeSocial);
    await _iprefHelper.saveUser(res.data, true);
    return true;
  }
}
