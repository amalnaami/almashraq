
library author_language;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'author_language.g.dart';

abstract class AuthorLanguage implements Built<AuthorLanguage, AuthorLanguageBuilder> {

  @nullable
  String get name;
  @nullable
  String get brief;

  AuthorLanguage._();

  factory AuthorLanguage([updates(AuthorLanguageBuilder b)]) = _$AuthorLanguage;

  String toJson() {
    return json.encode(serializers.serializeWith(AuthorLanguage.serializer, this));
  }

  static AuthorLanguage fromJson(String jsonString) {
    return serializers.deserializeWith(
        AuthorLanguage.serializer, json.decode(jsonString));
  }

  static Serializer<AuthorLanguage> get serializer => _$authorLanguageSerializer;
}
