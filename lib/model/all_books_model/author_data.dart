

library author_data;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/all_books_model/author_translation.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'author_data.g.dart';

abstract class AuthorData implements Built<AuthorData, AuthorDataBuilder> {

  @nullable
  int get id;
  @nullable
  String get image;
  @nullable
  String get quotation_count;
  @nullable
  String get reviews_count;
  @nullable
  int get books_count;
  @nullable
  AuthorTranslation get translations;

  AuthorData._();

  factory AuthorData([updates(AuthorDataBuilder b)]) = _$AuthorData;

  String toJson() {
    return json.encode(serializers.serializeWith(AuthorData.serializer, this));
  }

  static AuthorData fromJson(String jsonString) {
    return serializers.deserializeWith(
        AuthorData.serializer, json.decode(jsonString));
  }

  static Serializer<AuthorData> get serializer => _$authorDataSerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getBrief(String languageCode) {
    return languageCode == 'ar' ? translations.ar.brief : translations.en.brief;
  }
}
