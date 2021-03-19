library filter_event;

import 'package:built_value/built_value.dart';

part 'filter_event.g.dart';

abstract class FilterEvent {}

abstract class GetAuthors extends FilterEvent
    implements Built<GetAuthors, GetAuthorsBuilder> {
  GetAuthors._();
  factory GetAuthors([updates(GetAuthorsBuilder b)]) = _$GetAuthors;
}
abstract class GetFilterData extends FilterEvent
    implements Built<GetFilterData, GetFilterDataBuilder> {
  GetFilterData._();
  factory GetFilterData([updates(GetFilterDataBuilder b)]) = _$GetFilterData;
}
abstract class GetIsLogin extends FilterEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends FilterEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class GetSections extends FilterEvent
    implements Built<GetSections, GetSectionsBuilder> {
  GetSections._();
  factory GetSections([updates(GetSectionsBuilder b)]) = _$GetSections;
}