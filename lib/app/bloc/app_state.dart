library app_state;

import 'package:built_value/built_value.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // fields go here

  int get appLanguage;
  bool get loginState;

  AppState._();

  //put $ here
  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  factory AppState.init() {
    return AppState((b) => b
      ..appLanguage = 0
      ..loginState = false
    );
  }
}