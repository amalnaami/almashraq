library language;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'language.g.dart';

abstract class Language implements Built<Language, LanguageBuilder> {

  @nullable
  String get name;
  @nullable
  String get book_name;
  @nullable
  String get author_name;
  @nullable
  String get description;
  @nullable
  String get publish;
  @nullable
  String get sub_name;
  @nullable
  String get brief;

  Language._();

  factory Language([updates(LanguageBuilder b)]) = _$Language;

  String toJson() {
    return json.encode(serializers.serializeWith(Language.serializer, this));
  }

  static Language fromJson(String jsonString) {
    return serializers.deserializeWith(
        Language.serializer, json.decode(jsonString));
  }

  static Serializer<Language> get serializer => _$languageSerializer;
}
