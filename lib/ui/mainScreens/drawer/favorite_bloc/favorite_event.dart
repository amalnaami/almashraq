library favorite_event;

import 'package:built_value/built_value.dart';

part 'favorite_event.g.dart';

abstract class FavoriteEvent {}

abstract class GetFavorites extends FavoriteEvent
    implements Built<GetFavorites, GetFavoritesBuilder> {
  GetFavorites._();
  factory GetFavorites([updates(GetFavoritesBuilder b)]) = _$GetFavorites;
}

abstract class ClearState extends FavoriteEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
