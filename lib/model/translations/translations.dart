library translations;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'translations.g.dart';

abstract class Translations implements Built<Translations, TranslationsBuilder> {

  @nullable
  Language get ar;
  @nullable
  Language get en;

  Translations._();

  factory Translations([updates(TranslationsBuilder b)]) = _$Translations;

  String toJson() {
    return json.encode(serializers.serializeWith(Translations.serializer, this));
  }

  static Translations fromJson(String jsonString) {
    return serializers.deserializeWith(
        Translations.serializer, json.decode(jsonString));
  }

  static Serializer<Translations> get serializer => _$translationsSerializer;
}
