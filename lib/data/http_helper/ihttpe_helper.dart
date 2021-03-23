import 'dart:io';

import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/invoice/invoice.dart';
import 'package:maktabeh_app/model/notifications/notifications.dart';
import 'package:maktabeh_app/model/packages/packages.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

abstract class IHttpHelper {
  Future<BuiltList<Category>> getCategories(String language);
  Future<BuiltList<CountryModel>> getCountries(String language);
  Future<UserModel> login(String userName, String password, String firebaseToken);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password, String token);
  Future<Quote> getTodayQuotes(String language);
  Future<BuiltList<Quote>> getQuotesByBook(int bookId,String language);
  Future<Review> getTodayReview(String language);
  Future<BuiltList<Review>> getReviewByBook(int bookId,String language);
  Future<BuiltList<Author>> getFamousAuthors(String language);
  Future<BuiltList<Book>> getAllBooks(String language);
  Future<BuiltList<Book>> getLatestBooks(String language);
  Future<BuiltList<Book>> getMostReviewedBooks(String language);
  Future<BuiltList<Book>> getFeaturedBooks(String token,String language);
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String countryCode, File image, String firebaseToken);
  Future<bool> insertCategories(List<int> categories, String token);
  Future<BaseBook> getAllBookNextPage(int page,String language);
  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId,String language);
  Future<BookByCategoryModel> getSectionByBook(int withBooks, int sectionId,String language);
  Future<BuiltList<Author>> getAllAuthor(String language);
  Future<BaseBook> getBooksForAuthor(int page, int id,String language);
  Future<bool> addReview(String text,int rating,int bookId,String token);
  Future<bool> addQuote(String text,int bookId,String token);
  Future<BuiltList<Review>> getAllReviews(String language);
  Future<BuiltList<Quote>> getAllQuotes(String language);
  Future<ProfileModel> getUserProfile(String token,String language);
  Future<BuiltList<ReviewQuoteUserModel>> getUserReviews(String token,String language);
  Future<BuiltList<ReviewQuoteUserModel>> getUserQuote(String token,String language);
  Future<bool> addToFavorite(String token, int bookId, String language);
  Future<bool> removeFromFavorite(String token, int bookId, String language);
  Future<AboutUs> getAboutUs(String language);
  Future<bool> contactUs(String name, String email, String message);
  Future<BuiltList<Book>> getFavorite(String token, String language);
  Future<AppRate> getAppRate();
  Future<bool> rateTheApp(String token, int rate, String note);
  Future<bool> logout(String token);
  Future<UserModel> editUser( String username,String email,String tele,String gender,String country_code
      ,File image, String token,String language);
  Future<BaseBook> getFilteredBooks({
      String bookName,
      String ISIN,
      String releaseDate,
      int authorId,
      int sectionId,
      String sortType,
      String language,
    int page
  });
  Future<BuiltList<Author>> getFilteredAuthors({int sectionId, String name, String language});
  Future<BuiltList<Category>> getCategoryByName({String sectionName, String language});
  Future<UserModel> socialMediaLogin(String accessToken,  String firebaseToken,String typeSocial);
  Future<BaseBook> searchBooks({
    String bookName,
    List<int> sectionId,
    String searchWords,
    int authorId,
    String language,
    int page
  });
  Future<BuiltList<Notifications>> getNotifications(String token, String language);
  Future<BuiltList<Packages>> getPackages(String language);
  Future<Invoice> subscribe(String token, String type, String id, String language);


}
