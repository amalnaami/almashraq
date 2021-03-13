
library country_language;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'country_language.g.dart';

abstract class CountryLanguage implements Built<CountryLanguage, CountryLanguageBuilder> {

  @nullable
  String get name;
  @nullable
  String get nationality;

  CountryLanguage._();

  factory CountryLanguage([updates(CountryLanguageBuilder b)]) = _$CountryLanguage;

  String toJson() {
    return json.encode(serializers.serializeWith(CountryLanguage.serializer, this));
  }

  static CountryLanguage fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryLanguage.serializer, json.decode(jsonString));
  }

  static Serializer<CountryLanguage> get serializer => _$countryLanguageSerializer;
}
