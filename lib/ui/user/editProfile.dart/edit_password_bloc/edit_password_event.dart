library edit_password_event;

import 'package:built_value/built_value.dart';

part 'edit_password_event.g.dart';

abstract class EditPasswordEvent {}

abstract class SubmitRequest extends EditPasswordEvent
    implements Built<SubmitRequest, SubmitRequestBuilder> {
  String get newPassword;
  SubmitRequest._();

  factory SubmitRequest([updates(SubmitRequestBuilder b)]) = _$SubmitRequest;
}

abstract class ClearState extends EditPasswordEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}