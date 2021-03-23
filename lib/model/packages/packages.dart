library packages;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'packages.g.dart';

abstract class Packages implements Built<Packages, PackagesBuilder> {
  @nullable
  int get id;

  @nullable
  String get name;
  @nullable
  String get name_en;
  @nullable
  String get duration_days;
  @nullable
  String get price;

  Packages._();

  factory Packages([updates(PackagesBuilder b)]) = _$Packages;

  String toJson() {
    return json.encode(serializers.serializeWith(Packages.serializer, this));
  }

  static Packages fromJson(String jsonString) {
    return serializers.deserializeWith(
        Packages.serializer, json.decode(jsonString));
  }

  static Serializer<Packages> get serializer => _$packagesSerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? name : name_en;
  }
}
