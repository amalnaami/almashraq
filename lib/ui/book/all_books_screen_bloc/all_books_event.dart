library all_books_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

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
abstract class AddFilter extends AllBooksEvent
    implements Built<AddFilter, AddFilterBuilder> {
  AddFilter._();
  @nullable
  FilterData get data;
  factory AddFilter([updates(AddFilterBuilder b)]) = _$AddFilter;
}
abstract class AddSort extends AllBooksEvent
    implements Built<AddSort, AddSortBuilder> {
  AddSort._();
  @nullable
  String get sortType;
  factory AddSort([updates(AddSortBuilder b)]) = _$AddSort;
}