library author_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

part 'author_event.g.dart';

abstract class AuthorEvent {}

abstract class GetAuthors extends AuthorEvent
    implements Built<GetAuthors, GetAuthorsBuilder> {
  GetAuthors._();

  factory GetAuthors([updates(GetAuthorsBuilder b)]) = _$GetAuthors;
}
abstract class AddFilter extends AuthorEvent
    implements Built<AddFilter, AddFilterBuilder> {
  AddFilter._();
  FilterData get data;
  factory AddFilter([updates(AddFilterBuilder b)]) = _$AddFilter;
}
abstract class AddSort extends AuthorEvent
    implements Built<AddSort, AddSortBuilder> {
  AddSort._();
  String get sortType;
  factory AddSort([updates(AddSortBuilder b)]) = _$AddSort;
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
abstract class ClearFilter extends AuthorEvent
    implements Built<ClearFilter, ClearFilterBuilder> {
  ClearFilter._();

  factory ClearFilter([updates(ClearFilterBuilder b)]) = _$ClearFilter;
}
abstract class Clear extends AuthorEvent
    implements Built<Clear, ClearBuilder> {
  Clear._();

  factory Clear([updates(ClearBuilder b)]) = _$Clear;
}