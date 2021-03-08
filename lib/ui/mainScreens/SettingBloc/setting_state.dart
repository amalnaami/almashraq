library setting_state;

import 'package:built_value/built_value.dart';

part 'setting_state.g.dart';

abstract class SettingState implements Built<SettingState, SettingStateBuilder> {
  
  bool get isLoading;
  int get lang;
  SettingState._();

  //put $ here
  factory SettingState([updates(SettingStateBuilder b)]) = _$SettingState;

  factory SettingState.init() {
    return SettingState((b) => b
      ..isLoading = false
      ..lang = 1
    );
  }
}