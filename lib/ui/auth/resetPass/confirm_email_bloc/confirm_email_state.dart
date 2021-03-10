library confirm_email_state;

import 'package:built_value/built_value.dart';

part 'confirm_email_state.g.dart';

abstract class ConfirmEmailState implements Built<ConfirmEmailState, ConfirmEmailStateBuilder> {
  bool get isLoading;

  String get error;

  bool get success;

  ConfirmEmailState._();

  //put $ here
  factory ConfirmEmailState([updates(ConfirmEmailStateBuilder b)]) = _$ConfirmEmailState;

  factory ConfirmEmailState.init() {
    return ConfirmEmailState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false);
  }
}
