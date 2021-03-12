


library main_screen_event;

import 'package:built_value/built_value.dart';

part 'main_screen_event.g.dart';

abstract class MainScreenEvent {}

abstract class GetAllBooks extends MainScreenEvent
    implements Built<GetAllBooks, GetAllBooksBuilder> {
  GetAllBooks._();

  factory GetAllBooks([updates(GetAllBooksBuilder b)]) = _$GetAllBooks;
}
abstract class ClearState extends MainScreenEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}