

library books_data;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';

part 'books_data.g.dart';

abstract class BooksData implements Built<BooksData, BooksDataBuilder> {

  @nullable
  String get name;
  @nullable
  String get description;
  @nullable
  String get publish;
  @nullable
  String get sub_name;
  @nullable
  String get translator;

  BooksData._();

  factory BooksData([updates(BooksDataBuilder b)]) = _$BooksData;

  String toJson() {
    return json.encode(serializers.serializeWith(BooksData.serializer, this));
  }

  static BooksData fromJson(String jsonString) {
    return serializers.deserializeWith(
        BooksData.serializer, json.decode(jsonString));
  }

  static Serializer<BooksData> get serializer => _$booksDataSerializer;
}
