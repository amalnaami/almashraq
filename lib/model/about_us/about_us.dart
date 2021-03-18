library about_us;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/about_us_translation.dart';

part 'about_us.g.dart';

abstract class AboutUs implements Built<AboutUs, AboutUsBuilder> {

  @nullable
  int get id;
  @nullable
  AboutUsTranslation get translations;

  String getText(String languageCode) {
    return languageCode == 'ar' ? translations.ar.text : translations.en.text;
  }

  AboutUs._();

  factory AboutUs([updates(AboutUsBuilder b)]) = _$AboutUs;

  String toJson() {
    return json.encode(serializers.serializeWith(AboutUs.serializer, this));
  }

  static AboutUs fromJson(String jsonString) {
    return serializers.deserializeWith(
        AboutUs.serializer, json.decode(jsonString));
  }

  static Serializer<AboutUs> get serializer => _$aboutUsSerializer;

}
