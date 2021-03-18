library rate;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'rate.g.dart';

abstract class Rate implements Built<Rate, RateBuilder> {

  @nullable
  String get rate;
  @nullable
  String get note;
  @nullable
  User get user;

  Rate._();

  factory Rate([updates(RateBuilder b)]) = _$Rate;

  String toJson() {
    return json.encode(serializers.serializeWith(Rate.serializer, this));
  }

  static Rate fromJson(String jsonString) {
    return serializers.deserializeWith(
        Rate.serializer, json.decode(jsonString));
  }

  static Serializer<Rate> get serializer => _$rateSerializer;

}
