library book_screen_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';

part 'book_screen_state.g.dart';

abstract class BookScreenState implements Built<BookScreenState, BookScreenStateBuilder> {
  bool get isLoading;
  String get error;
  bool get isFavorite;
  bool get isLogin;


  BookScreenState._();

  //put $ here
  factory BookScreenState([updates(BookScreenStateBuilder b)]) = _$BookScreenState;

  factory BookScreenState.init() {
    return BookScreenState((b) => b
      ..isLoading = false
      ..error = ''
      ..isLogin = false..isFavorite = false
    );
  }
}
