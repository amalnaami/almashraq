import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

abstract class IRepository {
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);
  Future<BuiltList<Category>> getCategories();
  Future<bool> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password);
  Future<void> insertCategories(List<int> categories);
  Future<Quote> getTodayQuotes();
  Future<Review> getTodayReview();
  Future<BuiltList<Author>> getFamousAuthors();
  Future<BuiltList<Book>> getAllBooks();
  Future<BuiltList<Book>> getLatestBooks();
  Future<BuiltList<Book>> getMostReviewedBooks();
  Future<BuiltList<Book>> getFeaturedBooks();
}
