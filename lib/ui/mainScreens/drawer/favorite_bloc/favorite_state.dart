library favorite_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';

part 'favorite_state.g.dart';

abstract class FavoriteState implements Built<FavoriteState, FavoriteStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Book> get books;

  FavoriteState._();

  //put $ here
  factory FavoriteState([updates(FavoriteStateBuilder b)]) = _$FavoriteState;

  factory FavoriteState.init() {
    return FavoriteState((b) => b
      ..isLoading = false
      ..error = ''
      ..books.replace([])
    );
  }
}
