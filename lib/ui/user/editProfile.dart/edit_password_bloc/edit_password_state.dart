library edit_password_state;

import 'package:built_value/built_value.dart';

part 'edit_password_state.g.dart';

abstract class EditPasswordState implements Built<EditPasswordState, EditPasswordStateBuilder> {
  bool get isLoading;

  String get error;

  bool get success;

  EditPasswordState._();

  //put $ here
  factory EditPasswordState([updates(EditPasswordStateBuilder b)]) = _$EditPasswordState;

  factory EditPasswordState.init() {
    return EditPasswordState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false);
  }
}
