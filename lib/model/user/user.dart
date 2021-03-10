library user;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

  @nullable
  int get id;
  @nullable
  String get username;
  @nullable
  String get email;
  @nullable
  String get mobile;
  @nullable
  String get gender;
  @nullable
  String get country;
  @nullable
  String get image;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}
