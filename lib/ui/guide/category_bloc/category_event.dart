library category_event;

import 'package:built_value/built_value.dart';

part 'category_event.g.dart';

abstract class CategoryEvent {}

abstract class GetCategories extends CategoryEvent
    implements Built<GetCategories, GetCategoriesBuilder> {
  GetCategories._();

  factory GetCategories([updates(GetCategoriesBuilder b)]) = _$GetCategories;
}

abstract class ClearState extends CategoryEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class InsertCategories extends CategoryEvent implements Built<InsertCategories, InsertCategoriesBuilder>{
  List<int> get selectedCategories;
  InsertCategories._();

  factory InsertCategories([updates(InsertCategoriesBuilder b)]) = _$InsertCategories;
}