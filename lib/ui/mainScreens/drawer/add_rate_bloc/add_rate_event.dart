library add_rate_event;

import 'package:built_value/built_value.dart';

part 'add_rate_event.g.dart';

abstract class AddRateEvent {}

abstract class AddRate extends AddRateEvent
    implements Built<AddRate, AddRateBuilder> {
  AddRate._();
  int get rate;
  String get note;
  factory AddRate([updates(AddRateBuilder b)]) = _$AddRate;
}

abstract class ClearState extends AddRateEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class IsLogin extends AddRateEvent
    implements Built<IsLogin, IsLoginBuilder> {
  IsLogin._();

  factory IsLogin([updates(IsLoginBuilder b)]) = _$IsLogin;
}