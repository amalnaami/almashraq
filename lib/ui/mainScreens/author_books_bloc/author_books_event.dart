library author_books_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

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
abstract class CleatFilter extends AuthorBooksEvent
    implements Built<CleatFilter, CleatFilterBuilder> {
  CleatFilter._();

  factory CleatFilter([updates(CleatFilterBuilder b)]) = _$CleatFilter;
}

abstract class AddFilter extends AuthorBooksEvent
    implements Built<AddFilter, AddFilterBuilder> {
  AddFilter._();
  FilterData get data;
  factory AddFilter([updates(AddFilterBuilder b)]) = _$AddFilter;
}
abstract class AddSort extends AuthorBooksEvent
    implements Built<AddSort, AddSortBuilder> {
  AddSort._();
  int get id;
  String get sortType;
  factory AddSort([updates(AddSortBuilder b)]) = _$AddSort;
}
