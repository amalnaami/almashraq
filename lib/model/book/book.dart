library book;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/books_translation.dart';

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
  BooksTranslation get translations;
  @nullable
  String get pages_count;
  @nullable
  String get publish_year;
  @nullable
  String get size;
  @nullable
  String get isbn;
  @nullable
  String get quotations_count;
  @nullable
  String get keywords;
  @nullable
  String get sub_title;
  @nullable
  String get editor;
  @nullable
  String get painter;
  @nullable
  String get created_at;
  @nullable
  String get updated_at;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getDescription(String languageCode) {
    return languageCode == 'ar' ? translations.ar.description : translations.en.description;
  }
  String getPublish(String languageCode) {
    return languageCode == 'ar' ? translations.ar.publish : translations.en.publish;
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
