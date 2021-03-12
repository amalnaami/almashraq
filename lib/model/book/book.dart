library book;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'book.g.dart';

abstract class Book implements Built<Book, BookBuilder> {

  @nullable
  int get id;
  @nullable
  Category get section;
  @nullable
  Author get author;
  @nullable
  String get image;
  @nullable
  String get book_type;
  @nullable
  String get reviews_count;
  @nullable
  int get rate;
  @nullable
  Translations get translations;

  String getBookName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getPublishName(String languageCode) {
    return languageCode == 'ar' ? author.translations.ar.name : author.translations.en.name;
  }

  Book._();

  factory Book([updates(BookBuilder b)]) = _$Book;

  String toJson() {
    return json.encode(serializers.serializeWith(Book.serializer, this));
  }

  static Book fromJson(String jsonString) {
    return serializers.deserializeWith(
        Book.serializer, json.decode(jsonString));
  }

  static Serializer<Book> get serializer => _$bookSerializer;


}
