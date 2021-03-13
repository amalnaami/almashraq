library book_by_category;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'book_by_category.g.dart';

abstract class BookByCategoryModel implements Built<BookByCategoryModel, BookByCategoryModelBuilder> {

  @nullable
  int get id;
  @nullable
  int get books_count;
  @nullable
  String get image;
  @nullable
  Translations get translations;
  @nullable
  BaseBook get books;
  BookByCategoryModel._();

  factory BookByCategoryModel([updates(BookByCategoryModelBuilder b)]) = _$BookByCategoryModel;

  String toJson() {
    return json.encode(serializers.serializeWith(BookByCategoryModel.serializer, this));
  }

  static BookByCategoryModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BookByCategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<BookByCategoryModel> get serializer => _$bookByCategoryModelSerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
}
