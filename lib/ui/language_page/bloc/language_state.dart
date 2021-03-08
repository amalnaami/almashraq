library language_state;

import 'package:built_value/built_value.dart';

part 'language_state.g.dart';

abstract class LanguageState implements Built<LanguageState, LanguageStateBuilder> {
  
  bool get isLoading;
  int get lang;
  LanguageState._();

  //put $ here
  factory LanguageState([updates(LanguageStateBuilder b)]) = _$LanguageState;

  factory LanguageState.init() {
    return LanguageState((b) => b
      ..isLoading = false
      ..lang = 1
    );
  }
}