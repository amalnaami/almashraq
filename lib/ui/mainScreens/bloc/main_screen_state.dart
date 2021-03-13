


library main_screen_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/all_books_model/books_details.dart';

part 'main_screen_state.g.dart';

abstract class MainScreenState implements Built<MainScreenState, MainScreenStateBuilder> {
  bool get isLoading;

  String get error;

  bool get success;
  BuiltList<BooksDetails> get books;


  MainScreenState._();

  //put $ here
  factory MainScreenState([updates(MainScreenStateBuilder b)]) = _$MainScreenState;

  factory MainScreenState.init() {
    return MainScreenState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false
      ..books.replace([])
    );
  }
}
