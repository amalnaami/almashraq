
library about_us_language;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'about_us_language.g.dart';

abstract class AboutUsLanguage implements Built<AboutUsLanguage, AboutUsLanguageBuilder> {

  @nullable
  String get text;

  AboutUsLanguage._();

  factory AboutUsLanguage([updates(AboutUsLanguageBuilder b)]) = _$AboutUsLanguage;

  String toJson() {
    return json.encode(serializers.serializeWith(AboutUsLanguage.serializer, this));
  }

  static AboutUsLanguage fromJson(String jsonString) {
    return serializers.deserializeWith(
        AboutUsLanguage.serializer, json.decode(jsonString));
  }

  static Serializer<AboutUsLanguage> get serializer => _$aboutUsLanguageSerializer;
}
