
library country_translations;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/country_model/country_language.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'country_translations.g.dart';

abstract class CountryTranslations implements Built<CountryTranslations, CountryTranslationsBuilder> {

  @nullable
  CountryLanguage get ar;
  @nullable
  CountryLanguage get en;

  CountryTranslations._();

  factory CountryTranslations([updates(CountryTranslationsBuilder b)]) = _$CountryTranslations;

  String toJson() {
    return json.encode(serializers.serializeWith(CountryTranslations.serializer, this));
  }

  static CountryTranslations fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryTranslations.serializer, json.decode(jsonString));
  }

  static Serializer<CountryTranslations> get serializer => _$countryTranslationsSerializer;
}
