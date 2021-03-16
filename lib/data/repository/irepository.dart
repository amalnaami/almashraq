import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
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
  Future<BuiltList<Book>> getBooksForAuthor(int id);
  Future<BuiltList<Book>> getLatestBooks();
  Future<BuiltList<Book>> getMostReviewedBooks();
  Future<BuiltList<Book>> getFeaturedBooks();
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String country_code);
  Future<BaseBook> getAllBookNextPage(int page);
  Future<BookByCategoryModel> getBooksByCategory(int page, int categoryId);
  Future<BookByCategoryModel> getSectionByBook(int withBooks, int sectionId,);
  Future<bool> getIsLogin();
  Future<void> saveUser(UserData user);
  Future<bool> addReview(String text,int rating,int bookId);
  Future<bool> addQuote(String text,int bookId);
  Future<BuiltList<Review>> getAllReviews();
  Future<BuiltList<Quote>> getAllQuotes();

}
