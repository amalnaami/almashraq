library app_rate;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/rate/rate.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'app_rate.g.dart';

abstract class AppRate implements Built<AppRate, AppRateBuilder> {

  @nullable
  String get avg_rate;
  @nullable
  BuiltList<Rate> get all_rates;

  AppRate._();

  factory AppRate([updates(AppRateBuilder b)]) = _$AppRate;

  String toJson() {
    return json.encode(serializers.serializeWith(AppRate.serializer, this));
  }

  static AppRate fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppRate.serializer, json.decode(jsonString));
  }

  static Serializer<AppRate> get serializer => _$appRateSerializer;

}
