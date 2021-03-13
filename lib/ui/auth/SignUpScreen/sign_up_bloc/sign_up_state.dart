
library sign_up_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

part 'sign_up_state.g.dart';

abstract class SignUpState implements Built<SignUpState, SignUpStateBuilder> {
  bool get isLoading;

  String get error;

  bool get success;
  BuiltList<CountryModel> get country;
  bool get successSignup;
  UserModel get user;

  SignUpState._();

  //put $ here
  factory SignUpState([updates(SignUpStateBuilder b)]) = _$SignUpState;

  factory SignUpState.init() {
    return SignUpState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false
      ..country.replace([])
      ..successSignup=false
      ..user=null
    );
  }
}
