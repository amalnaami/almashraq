library all_books_event;

import 'package:built_value/built_value.dart';

part 'all_books_event.g.dart';

abstract class AllBooksEvent {}

abstract class GetNextPage extends AllBooksEvent
    implements Built<GetNextPage, GetNextPageBuilder> {
  GetNextPage._();

  factory GetNextPage([updates(GetNextPageBuilder b)]) = _$GetNextPage;
}

abstract class ClearState extends AllBooksEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
