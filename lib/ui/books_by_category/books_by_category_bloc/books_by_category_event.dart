library books_by_category_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

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

abstract class CleatFilter extends BooksByCategoryEvent
    implements Built<CleatFilter, CleatFilterBuilder> {
  CleatFilter._();

  factory CleatFilter([updates(CleatFilterBuilder b)]) = _$CleatFilter;
}

abstract class AddFilter extends BooksByCategoryEvent
    implements Built<AddFilter, AddFilterBuilder> {
  AddFilter._();
  FilterData get data;
  factory AddFilter([updates(AddFilterBuilder b)]) = _$AddFilter;
}
abstract class AddSort extends BooksByCategoryEvent
    implements Built<AddSort, AddSortBuilder> {
  AddSort._();
  int get id;
  String get sortType;
  factory AddSort([updates(AddSortBuilder b)]) = _$AddSort;
}
