library categories_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';

part 'categories_state.g.dart';

abstract class CategoriesState implements Built<CategoriesState, CategoriesStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Category> get categories;
  bool get isLogin;


  CategoriesState._();

  //put $ here
  factory CategoriesState([updates(CategoriesStateBuilder b)]) = _$CategoriesState;

  factory CategoriesState.init() {
    return CategoriesState((b) => b
      ..isLoading = false
      ..error = ''
      ..categories.replace([])
      ..isLogin = false
    );
  }
}
