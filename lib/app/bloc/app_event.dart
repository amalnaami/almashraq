library app_event;

import 'dart:io';
import 'package:built_value/built_value.dart';

part 'app_event.g.dart';

abstract class AppEvent {}

abstract class ClearError extends AppEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class IniEvent extends AppEvent
    implements Built<IniEvent, IniEventBuilder> {
  IniEvent._();
  factory IniEvent([updates(IniEventBuilder b)]) = _$IniEvent;
}