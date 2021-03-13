
library user_data;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/token.dart';
import 'package:maktabeh_app/model/user/user.dart';


part 'user_data.g.dart';


abstract class UserData implements Built<UserData,UserDataBuilder> {

  @nullable
  User get user;
  @nullable
  String get access_token;

  UserData._();

  factory UserData([updates(UserDataBuilder b)]) = _$UserData;

  String toJson() {
    return json.encode(serializers.serializeWith(UserData.serializer, this));
  }

  static UserData fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserData.serializer, json.decode(jsonString));
  }

  static Serializer<UserData> get serializer => _$userDataSerializer;
}