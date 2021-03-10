library category_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:built_collection/built_collection.dart';

part 'category_state.g.dart';

abstract class CategoryState implements Built<CategoryState, CategoryStateBuilder> {
  bool get isLoading;
  bool get successAdding;

  String get error;

  BuiltList<Category> get categories;

  CategoryState._();

  //put $ here
  factory CategoryState([updates(CategoryStateBuilder b)]) = _$CategoryState;

  factory CategoryState.init() {
    return CategoryState((b) => b
      ..isLoading = false
      ..error = ''
      ..successAdding = false
      ..categories.replace([]));
  }
}
