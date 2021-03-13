

library books_translation;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/all_books_model/books_data.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'books_translation.g.dart';

abstract class BooksTranslation implements Built<BooksTranslation, BooksTranslationBuilder> {

  @nullable
  BooksData get ar;
  @nullable
  BooksData get en;


  BooksTranslation._();

  factory BooksTranslation([updates(BooksTranslationBuilder b)]) = _$BooksTranslation;

  String toJson() {
    return json.encode(serializers.serializeWith(BooksTranslation.serializer, this));
  }

  static BooksTranslation fromJson(String jsonString) {
    return serializers.deserializeWith(
        BooksTranslation.serializer, json.decode(jsonString));
  }

  static Serializer<BooksTranslation> get serializer => _$booksTranslationSerializer;

}
