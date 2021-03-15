library home_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  bool get isLoading;
  String get error;

  BuiltList<Book> get latestBooks;
  BuiltList<Book> get mostReviewedBooks;
  BuiltList<Book> get featuredBooks;
  BuiltList<Book> get allBooks;
  BuiltList<Author> get authors;
  BuiltList<Category> get categories;
  @nullable
  Quote get todayQuote;
  @nullable
  Review get todayReview;
  bool get isLogin;


  HomeState._();

  //put $ here
  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;

  factory HomeState.init() {
    return HomeState((b) => b
      ..isLoading = false
      ..error = ''
      ..latestBooks.replace([])
      ..mostReviewedBooks.replace([])
      ..featuredBooks.replace([])
      ..allBooks.replace([])
      ..authors.replace([])
      ..todayQuote = null
      ..todayReview = null
      ..isLogin = false
    );
  }
}
