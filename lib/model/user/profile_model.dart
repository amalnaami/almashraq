

library profile_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';
part 'profile_model.g.dart';


abstract class ProfileModel implements Built<ProfileModel,ProfileModelBuilder> {
  @nullable
  bool get status;
  @nullable
  String get message;
  @nullable
  User get data;

  ProfileModel._();

  factory ProfileModel([updates(ProfileModelBuilder b)]) = _$ProfileModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ProfileModel.serializer, this));
  }

  static ProfileModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProfileModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProfileModel> get serializer => _$profileModelSerializer;
}