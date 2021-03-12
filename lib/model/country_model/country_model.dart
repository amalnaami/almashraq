
library country_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/country_model/country_translations.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'country_model.g.dart';

abstract class CountryModel implements Built<CountryModel, CountryModelBuilder> {

  @nullable
  String get id;
  @nullable
  CountryTranslations get translations;

  CountryModel._();

  factory CountryModel([updates(CountryModelBuilder b)]) = _$CountryModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CountryModel.serializer, this));
  }

  static CountryModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CountryModel> get serializer => _$countryModelSerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getNameNationality(String languageCode) {
    return languageCode == 'ar' ? translations.ar.nationality : translations.en.nationality;
  }
}
