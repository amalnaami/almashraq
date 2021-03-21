import 'dart:io';

import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

abstract class IRepository {
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);

  Future<BuiltList<Category>> getCategories();

  Future<BuiltList<CountryModel>> getCountries();

  Future<bool> login(String userName, String password);

  Future<bool> forgetPassword(String email);

  Future<bool> updatePassword(String password);

  Future<bool> insertCategories(List<int> categories);

  Future<Quote> getTodayQuotes();

  Future<BuiltList<Quote>> getQuotesByBook(int bookId);

  Future<Review> getTodayReview();

  Future<BuiltList<Review>> getReviewByBook(int bookId);

  Future<BuiltList<Author>> getFamousAuthors();

  Future<BuiltList<Author>> getAllAuthor();

  Future<BuiltList<Book>> getAllBooks();

  Future<BaseBook> getBooksForAuthor(int page, int id);

  Future<BuiltList<Book>> getLatestBooks();

  Future<BuiltList<Book>> getMostReviewedBooks();

  Future<BuiltList<Book>> getFeaturedBooks();

  Future<UserModel> register(String name, String username, String email,
      String password, String tele, String gender, String country_code, File image);

  Future<BaseBook> getAllBookNextPage(int page);

  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId);

  Future<BookByCategoryModel> getSectionByBook(
    int withBooks,
    int sectionId,
  );

  Future<bool> getIsLogin();

  Future<void> saveUser(UserData user);

  Future<bool> addReview(String text, int rating, int bookId);

  Future<bool> addQuote(String text, int bookId);

  Future<BuiltList<Review>> getAllReviews();

  Future<BuiltList<Quote>> getAllQuotes();

  Future<ProfileModel> getUserProfile();

  Future<BuiltList<ReviewQuoteUserModel>> getUserReviews();

  Future<BuiltList<ReviewQuoteUserModel>> getUserQuote();

  Future<bool> addToFavorite(int bookId);

  Future<bool> removeFromFavorite(int bookId);

  Future<AboutUs> getAboutUs();

  Future<bool> contactUs(String name, String email, String message);

  Future<BuiltList<Book>> getFavorite();

  Future<AppRate> getAppRate();

  Future<bool> rateTheApp(int rate, String note);

  Future<bool> logout();

  Future<UserModel> editUser( String username, String email,
      String tele, String gender, String country_code, File image);

  Future<BaseBook> getFilteredBooks(
      {String bookName,
      String ISIN,
      String releaseDate,
      int authorId,
      int sectionId,
      String sortType,
      int page});

  Future<BuiltList<Author>> getFilteredAuthors({int sectionId, String name});
  Future<BuiltList<Category>> getCategoryByName({String sectionName});
  Future<String> getEmail();
  Future<String> getCountry();
  Future<String> getImage();
  Future<String> getName();
  Future<bool> socialMediaLogin(String accessToken,  String typeSocial);
  Future<BaseBook> searchBooks({
    String bookName,
    List<int> sectionId,
    String searchWords,
    int authorId,
    int page
  });
}
