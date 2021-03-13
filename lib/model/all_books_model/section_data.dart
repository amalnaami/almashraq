
library section_data;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'section_data.g.dart';

abstract class SectionData implements Built<SectionData, SectionDataBuilder> {

  @nullable
  int get id;
  @nullable
  int get books_count;
  @nullable
  String get image;
  @nullable
  Translations get translations;

  SectionData._();

  factory SectionData([updates(SectionDataBuilder b)]) = _$SectionData;

  String toJson() {
    return json.encode(serializers.serializeWith(SectionData.serializer, this));
  }

  static SectionData fromJson(String jsonString) {
    return serializers.deserializeWith(
        SectionData.serializer, json.decode(jsonString));
  }

  static Serializer<SectionData> get serializer => _$sectionDataSerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
}
