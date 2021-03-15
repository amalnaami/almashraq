library author_event;

import 'package:built_value/built_value.dart';

part 'author_event.g.dart';

abstract class AuthorEvent {}

abstract class GetAuthors extends AuthorEvent
    implements Built<GetAuthors, GetAuthorsBuilder> {
  GetAuthors._();

  factory GetAuthors([updates(GetAuthorsBuilder b)]) = _$GetAuthors;
}
abstract class GetIsLogin extends AuthorEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends AuthorEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
