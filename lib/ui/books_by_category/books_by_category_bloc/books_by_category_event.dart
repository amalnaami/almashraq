library books_by_category_event;

import 'package:built_value/built_value.dart';

part 'books_by_category_event.g.dart';

abstract class BooksByCategoryEvent {}

abstract class GetNextPage extends BooksByCategoryEvent
    implements Built<GetNextPage, GetNextPageBuilder> {
  int get categoryId;
  GetNextPage._();

  factory GetNextPage([updates(GetNextPageBuilder b)]) = _$GetNextPage;
}

abstract class ClearState extends BooksByCategoryEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
