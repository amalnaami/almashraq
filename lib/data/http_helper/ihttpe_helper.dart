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
  Future<BuiltList<Category>> getCategories(String language);
  Future<BuiltList<CountryModel>> getCountries(String language);
  Future<UserModel> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password, String token);
  Future<Quote> getTodayQuote(String language);
  Future<BuiltList<Quote>> getQuotesByBook(int bookId,String language);
  Future<Review> getTodayReview(String language);
  Future<BuiltList<Review>> getReviewByBook(int bookId,String language);
  Future<BuiltList<Author>> getFamousAuthors(String language);
  Future<BuiltList<Book>> getAllBooks(String language);
  Future<BuiltList<Book>> getLatestBooks(String language);
  Future<BuiltList<Book>> getMostReviewedBooks(String language);
  Future<BuiltList<Book>> getFeaturedBooks(String token, String language);
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String countryCode);
  Future<bool> insertCategories(List<int> categories, String token);
  Future<BaseBook> getAllBookNextPage(int page, String language);
  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId, String language);
  Future<BuiltList<Author>> getAllAuthor(String language);
  Future<BuiltList<Book>> getBooksForAuthor(int id, String language);
}
