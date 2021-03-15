library author_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

part 'author_state.g.dart';

abstract class AuthorState implements Built<AuthorState, AuthorStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Author> get authors;
  bool get isLogin;


  AuthorState._();

  //put $ here
  factory AuthorState([updates(AuthorStateBuilder b)]) = _$AuthorState;

  factory AuthorState.init() {
    return AuthorState((b) => b
      ..isLoading = false
      ..error = ''
      ..authors.replace([])
      ..isLogin = false
    );
  }
}
