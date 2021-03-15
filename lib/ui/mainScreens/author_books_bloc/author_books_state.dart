library author_books_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

part 'author_books_state.g.dart';

abstract class AuthorBooksState implements Built<AuthorBooksState, AuthorBooksStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Book> get books;
  bool get isLogin;


  AuthorBooksState._();

  //put $ here
  factory AuthorBooksState([updates(AuthorBooksStateBuilder b)]) = _$AuthorBooksState;

  factory AuthorBooksState.init() {
    return AuthorBooksState((b) => b
      ..isLoading = false
      ..error = ''
      ..books.replace([])
      ..isLogin = false
    );
  }
}
