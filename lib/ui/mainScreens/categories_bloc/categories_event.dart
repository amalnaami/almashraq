library categories_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

part 'categories_event.g.dart';

abstract class CategoriesEvent {}

abstract class GetCategories extends CategoriesEvent
    implements Built<GetCategories, GetCategoriesBuilder> {
  GetCategories._();

  factory GetCategories([updates(GetCategoriesBuilder b)]) = _$GetCategories;
}
abstract class GetIsLogin extends CategoriesEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends CategoriesEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class Clear extends CategoriesEvent
    implements Built<Clear, ClearBuilder> {
  Clear._();

  factory Clear([updates(ClearBuilder b)]) = _$Clear;
}
abstract class AddFilter extends CategoriesEvent
    implements Built<AddFilter, AddFilterBuilder> {
  AddFilter._();
  FilterData get data;
  factory AddFilter([updates(AddFilterBuilder b)]) = _$AddFilter;
}
abstract class ClearFilter extends CategoriesEvent
    implements Built<ClearFilter, ClearFilterBuilder> {
  ClearFilter._();
  factory ClearFilter([updates(ClearFilterBuilder b)]) = _$ClearFilter;
}