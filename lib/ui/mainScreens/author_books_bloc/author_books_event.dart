library author_books_event;

import 'package:built_value/built_value.dart';

part 'author_books_event.g.dart';

abstract class AuthorBooksEvent {}

abstract class GetAuthorBooks extends AuthorBooksEvent
    implements Built<GetAuthorBooks, GetAuthorBooksBuilder> {

  int get id;
  GetAuthorBooks._();

  factory GetAuthorBooks([updates(GetAuthorBooksBuilder b)]) = _$GetAuthorBooks;
}
abstract class GetIsLogin extends AuthorBooksEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends AuthorBooksEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
