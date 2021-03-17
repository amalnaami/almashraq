library books_by_category_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';

part 'books_by_category_state.g.dart';

abstract class BooksByCategoryState implements Built<BooksByCategoryState, BooksByCategoryStateBuilder> {
  bool get isLoading;
  String get error;

  BuiltList<Book> get allBooks;


  BooksByCategoryState._();

  //put $ here
  factory BooksByCategoryState([updates(BooksByCategoryStateBuilder b)]) = _$BooksByCategoryState;

  factory BooksByCategoryState.init() {
    return BooksByCategoryState((b) => b
      ..isLoading = false
      ..error = ''
      ..allBooks.replace([])
    );
  }
}
