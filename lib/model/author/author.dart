library author;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/author_translation.dart';

part 'author.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {

  @nullable
  int get id;
  @nullable
  String get image;
  @nullable
  AuthorTranslation get translations;
  @nullable
  String get reviews_count;
  @nullable
  String get quotation_count;
  @nullable
  int get books_count;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getBrief(String languageCode) {
    return languageCode == 'ar' ? translations.ar.brief : translations.en.brief;
  }

  Author._();

  factory Author([updates(AuthorBuilder b)]) = _$Author;

  String toJson() {
    return json.encode(serializers.serializeWith(Author.serializer, this));
  }

  static Author fromJson(String jsonString) {
    return serializers.deserializeWith(
        Author.serializer, json.decode(jsonString));
  }

  static Serializer<Author> get serializer => _$authorSerializer;

  // String getBookName(String languageCode) {
  //   return languageCode == 'ar' ? translations.ar.book_name;
  // }
  // String getAuthorName(String languageCode) {
  //   return languageCode == 'ar' ? translations.ar.author_name;
  // }
}
