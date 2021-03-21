library search_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/category/category.dart';

part 'search_state.g.dart';

abstract class SearchState implements Built<SearchState, SearchStateBuilder> {
  bool get isLoading;
  String get error;

  BuiltList<Book> get allBooks;
  BuiltList<Author> get authors;
  BuiltList<Category> get categories;


  SearchState._();

  //put $ here
  factory SearchState([updates(SearchStateBuilder b)]) = _$SearchState;

  factory SearchState.init() {
    return SearchState((b) => b
      ..isLoading = false
      ..error = ''
      ..categories.replace([])
      ..allBooks.replace([])..authors.replace([])
    );
  }
}
