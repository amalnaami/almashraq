library token;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'token.g.dart';

abstract class Token implements Built<Token, TokenBuilder> {

  @nullable
  String get access_token;
  @nullable
  int get expires_in;

  Token._();

  factory Token([updates(TokenBuilder b)]) = _$Token;

  String toJson() {
    return json.encode(serializers.serializeWith(Token.serializer, this));
  }

  static Token fromJson(String jsonString) {
    return serializers.deserializeWith(
        Token.serializer, json.decode(jsonString));
  }

  static Serializer<Token> get serializer => _$tokenSerializer;
}
