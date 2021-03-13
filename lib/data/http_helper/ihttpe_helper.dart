import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

abstract class IHttpHelper {
  Future<BuiltList<Category>> getCategories();
  Future<BuiltList<CountryModel>> getCountries(String language);
  Future<UserModel> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password, String token);
  Future<Quote> getTodayQuotes();
  Future<Review> getTodayReview();
  Future<BuiltList<Author>> getFamousAuthors();
  Future<BuiltList<Book>> getAllBooks();
  Future<BuiltList<Book>> getLatestBooks();
  Future<BuiltList<Book>> getMostReviewedBooks();
  Future<BuiltList<Book>> getFeaturedBooks(String token);
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String countryCode);
  Future<bool> insertCategories(List<int> categories, String token);
  Future<BaseBook> getAllBookNextPage(int page);
  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId);
}
