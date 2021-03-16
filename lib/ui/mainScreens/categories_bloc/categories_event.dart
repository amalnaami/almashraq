library categories_event;

import 'package:built_value/built_value.dart';

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
