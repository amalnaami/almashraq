library filter_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/category/category.dart';

part 'filter_state.g.dart';

abstract class FilterState implements Built<FilterState, FilterStateBuilder> {
  bool get isLoading;
  String get error;
  bool get isLogin;
  bool get success;
  BuiltList<Author> get authors;
  BuiltList<Category> get categories;

  FilterState._();

  //put $ here
  factory FilterState([updates(FilterStateBuilder b)]) = _$FilterState;

  factory FilterState.init() {
    return FilterState((b) => b
      ..isLoading = false
      ..error = ''
      ..isLogin = false
      ..authors.replace([])
      ..categories.replace([])
      ..success = false
    );
  }
}
