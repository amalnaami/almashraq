import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

abstract class IHttpHelper {
  Future<BuiltList<Category>> getCategories();
  Future<LoginModel> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password, String token);
  Future<Quote> getTodayQuotes();
  Future<Review> getTodayReview();
  Future<BuiltList<Author>> getFamousAuthors();
  Future<BuiltList<Book>> getAllBooks();
  Future<BuiltList<Book>> getLatestBooks();
  Future<BuiltList<Book>> getMostReviewedBooks();
  Future<BuiltList<Book>> getFeaturedBooks(String token);
}
