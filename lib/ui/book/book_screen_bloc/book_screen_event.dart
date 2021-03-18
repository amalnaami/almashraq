library book_screen_event;

import 'package:built_value/built_value.dart';

part 'book_screen_event.g.dart';

abstract class BookScreenEvent {}

abstract class GetFavorite extends BookScreenEvent
    implements Built<GetFavorite, GetFavoriteBuilder> {
  GetFavorite._();
  int get id;
  factory GetFavorite([updates(GetFavoriteBuilder b)]) = _$GetFavorite;
}
abstract class GetIsLogin extends BookScreenEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends BookScreenEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class ModifyFavorite extends BookScreenEvent
    implements Built<ModifyFavorite, ModifyFavoriteBuilder> {
  ModifyFavorite._();
  bool get isFavorite;
  int get id;
  factory ModifyFavorite([updates(ModifyFavoriteBuilder b)]) = _$ModifyFavorite;
}