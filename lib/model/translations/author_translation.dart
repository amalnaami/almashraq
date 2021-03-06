
library author_translation;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

import 'author_language.dart';

part 'author_translation.g.dart';

abstract class AuthorTranslation implements Built<AuthorTranslation, AuthorTranslationBuilder> {

  @nullable
  AuthorLanguage get ar;
  @nullable
  AuthorLanguage get en;

  AuthorTranslation._();

  factory AuthorTranslation([updates(AuthorTranslationBuilder b)]) = _$AuthorTranslation;

  String toJson() {
    return json.encode(serializers.serializeWith(AuthorTranslation.serializer, this));
  }

  static AuthorTranslation fromJson(String jsonString) {
    return serializers.deserializeWith(
        AuthorTranslation.serializer, json.decode(jsonString));
  }

  static Serializer<AuthorTranslation> get serializer => _$authorTranslationSerializer;

}
