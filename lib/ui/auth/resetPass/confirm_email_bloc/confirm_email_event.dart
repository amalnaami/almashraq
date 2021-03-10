library confirm_email_event;

import 'package:built_value/built_value.dart';

part 'confirm_email_event.g.dart';

abstract class ConfirmEmailEvent {}

abstract class SubmitEmail extends ConfirmEmailEvent
    implements Built<SubmitEmail, SubmitEmailBuilder> {
  String get email;
  SubmitEmail._();

  factory SubmitEmail([updates(SubmitEmailBuilder b)]) = _$SubmitEmail;
}

abstract class ClearState extends ConfirmEmailEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}