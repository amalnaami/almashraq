library search_result_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/category/category.dart';

part 'search_result_state.g.dart';

abstract class SearchResultState implements Built<SearchResultState, SearchResultStateBuilder> {
  bool get isLoading;
  String get error;

  BuiltList<Book> get allBooks;


  SearchResultState._();

  //put $ here
  factory SearchResultState([updates(SearchResultStateBuilder b)]) = _$SearchResultState;

  factory SearchResultState.init() {
    return SearchResultState((b) => b
      ..isLoading = false
      ..error = ''
      ..allBooks.replace([])
    );
  }
}
