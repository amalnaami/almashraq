library login_state;

import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  bool get isLoading;

  String get error;

  bool get successLogin;
  bool get isLogin;
  LoginState._();

  //put $ here
  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.init() {
    return LoginState((b) => b
      ..isLoading = false
      ..error = ''
      ..successLogin = false
      ..isLogin=false);
  }
}
