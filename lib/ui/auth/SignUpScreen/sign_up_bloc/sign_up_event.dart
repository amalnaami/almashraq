
library sign_up_event;

import 'package:built_value/built_value.dart';

part 'sign_up_event.g.dart';

abstract class SignUpEvent {}

abstract class GetCountry extends SignUpEvent
    implements Built<GetCountry, GetCountryBuilder> {
  GetCountry._();

  factory GetCountry([updates(GetCountryBuilder b)]) = _$GetCountry;
}
abstract class ClearState extends SignUpEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class SignUp extends SignUpEvent
    implements Built<SignUp, SignUpBuilder> {

  String get name;
  String get username;
  String get email;
  String get password;
  String get tele;
  String get gender;
  String get country_code;


  SignUp._();

  factory SignUp([updates(SignUpBuilder b)]) = _$SignUp;
}