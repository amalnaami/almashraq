library login_event;

import 'package:built_value/built_value.dart';

part 'login_event.g.dart';

abstract class LoginEvent {}

abstract class Login extends LoginEvent
    implements Built<Login, LoginBuilder> {
  String get userName;
  String get password;
  Login._();

  factory Login([updates(LoginBuilder b)]) = _$Login;
}

abstract class ClearState extends LoginEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}

abstract class GetIsLogin extends LoginEvent implements Built<GetIsLogin,GetIsLoginBuilder> {
  // fields go here



  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}

abstract class SocialLogin extends LoginEvent implements Built<SocialLogin,SocialLoginBuilder> {
  // fields go here
  String get acessToken;
  String get typeSocial;
  SocialLogin._();

  factory SocialLogin([updates(SocialLoginBuilder b)]) = _$SocialLogin;
}
