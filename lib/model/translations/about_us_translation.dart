
library about_us_translation;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

import 'about_us_language.dart';

part 'about_us_translation.g.dart';

abstract class AboutUsTranslation implements Built<AboutUsTranslation, AboutUsTranslationBuilder> {

  @nullable
  AboutUsLanguage get ar;
  @nullable
  AboutUsLanguage get en;

  AboutUsTranslation._();

  factory AboutUsTranslation([updates(AboutUsTranslationBuilder b)]) = _$AboutUsTranslation;

  String toJson() {
    return json.encode(serializers.serializeWith(AboutUsTranslation.serializer, this));
  }

  static AboutUsTranslation fromJson(String jsonString) {
    return serializers.deserializeWith(
        AboutUsTranslation.serializer, json.decode(jsonString));
  }

  static Serializer<AboutUsTranslation> get serializer => _$aboutUsTranslationSerializer;
}
