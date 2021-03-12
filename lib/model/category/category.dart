library category;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {

  @nullable
  int get id;
  @nullable
  Translations get translations;
  @nullable
  int get books_count;
  @nullable
  String get image;

  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  String toJson() {
    return json.encode(serializers.serializeWith(Category.serializer, this));
  }

  static Category fromJson(String jsonString) {
    return serializers.deserializeWith(
        Category.serializer, json.decode(jsonString));
  }

  static Serializer<Category> get serializer => _$categorySerializer;

  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
}
