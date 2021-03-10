library login_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'login_model.g.dart';

abstract class LoginModel implements Built<LoginModel, LoginModelBuilder> {

  @nullable
  String get access_token;
  @nullable
  User get user;

  LoginModel._();

  factory LoginModel([updates(LoginModelBuilder b)]) = _$LoginModel;

  String toJson() {
    return json.encode(serializers.serializeWith(LoginModel.serializer, this));
  }

  static LoginModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginModel.serializer, json.decode(jsonString));
  }

  static Serializer<LoginModel> get serializer => _$loginModelSerializer;
}
