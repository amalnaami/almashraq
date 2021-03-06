library home_event;

import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class GetFeaturedBook extends HomeEvent
    implements Built<GetFeaturedBook, GetFeaturedBookBuilder> {
  GetFeaturedBook._();

  factory GetFeaturedBook([updates(GetFeaturedBookBuilder b)]) = _$GetFeaturedBook;
}

abstract class ClearState extends HomeEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class GetMostReviewedBooks extends HomeEvent implements Built<GetMostReviewedBooks, GetMostReviewedBooksBuilder>{
  GetMostReviewedBooks._();

  factory GetMostReviewedBooks([updates(GetMostReviewedBooksBuilder b)]) = _$GetMostReviewedBooks;
}
abstract class GetAllBooks extends HomeEvent implements Built<GetAllBooks, GetAllBooksBuilder>{
  GetAllBooks._();

  factory GetAllBooks([updates(GetAllBooksBuilder b)]) = _$GetAllBooks;
}
abstract class GetLatestBooks extends HomeEvent implements Built<GetLatestBooks, GetLatestBooksBuilder>{
  GetLatestBooks._();

  factory GetLatestBooks([updates(GetLatestBooksBuilder b)]) = _$GetLatestBooks;
}
abstract class GetTodayQuote extends HomeEvent implements Built<GetTodayQuote, GetTodayQuoteBuilder>{
  GetTodayQuote._();

  factory GetTodayQuote([updates(GetTodayQuoteBuilder b)]) = _$GetTodayQuote;
}
abstract class GetTodayReview extends HomeEvent implements Built<GetTodayReview, GetTodayReviewBuilder>{
  GetTodayReview._();

  factory GetTodayReview([updates(GetTodayReviewBuilder b)]) = _$GetTodayReview;
}
abstract class GetFamousAuthors extends HomeEvent implements Built<GetFamousAuthors, GetFamousAuthorsBuilder>{
  GetFamousAuthors._();

  factory GetFamousAuthors([updates(GetFamousAuthorsBuilder b)]) = _$GetFamousAuthors;
}
abstract class GetHomePage extends HomeEvent implements Built<GetHomePage, GetHomePageBuilder>{
  GetHomePage._();

  factory GetHomePage([updates(GetHomePageBuilder b)]) = _$GetHomePage;
}
abstract class GetCategories extends HomeEvent implements Built<GetCategories, GetCategoriesBuilder>{
  GetCategories._();

  factory GetCategories([updates(GetCategoriesBuilder b)]) = _$GetCategories;
}

abstract class GetIsLogin extends HomeEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  // fields go here

  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}


abstract class GetReviewByBookId extends HomeEvent
    implements Built<GetReviewByBookId, GetReviewByBookIdBuilder> {
  int get bookId;
  GetReviewByBookId._();

  factory GetReviewByBookId([updates(GetReviewByBookIdBuilder b)]) = _$GetReviewByBookId;
}

abstract class GetQuotesByBookId extends HomeEvent
    implements Built<GetQuotesByBookId, GetQuotesByBookIdBuilder> {
  int get bookId;
  GetQuotesByBookId._();

  factory GetQuotesByBookId([updates(GetQuotesByBookIdBuilder b)]) = _$GetQuotesByBookId;
}


abstract class GetSectionByBook extends HomeEvent
    implements Built<GetSectionByBook, GetSectionByBookBuilder> {
  int get sectionId;
  int get bookId;
  GetSectionByBook._();

  factory GetSectionByBook([updates(GetSectionByBookBuilder b)]) = _$GetSectionByBook;
}


abstract class AddNewReview extends HomeEvent
    implements Built<AddNewReview, AddNewReviewBuilder> {
  String get text;
  int get rating;
  int get bookId;
  AddNewReview._();

  factory AddNewReview([updates(AddNewReviewBuilder b)]) = _$AddNewReview;
}


abstract class AddQuote extends HomeEvent
    implements Built<AddQuote, AddQuoteBuilder> {
  String get text;
  int get bookId;
  AddQuote._();

  factory AddQuote([updates(AddQuoteBuilder b)]) = _$AddQuote;
}
