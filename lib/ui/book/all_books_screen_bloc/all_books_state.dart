library all_books_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';

part 'all_books_state.g.dart';

abstract class AllBooksState implements Built<AllBooksState, AllBooksStateBuilder> {
  bool get isLoading;
  String get error;

  BuiltList<Book> get allBooks;


  AllBooksState._();

  //put $ here
  factory AllBooksState([updates(AllBooksStateBuilder b)]) = _$AllBooksState;

  factory AllBooksState.init() {
    return AllBooksState((b) => b
      ..isLoading = false
      ..error = ''
      ..allBooks.replace([])
    );
  }
}
