library base_book;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/paginator/paginator.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'book.dart';

part 'base_book.g.dart';

abstract class BaseBook implements Built<BaseBook, BaseBookBuilder> {
  @nullable
  BuiltList<Book> get data;
  @nullable
  Paginator get paginator;
  BaseBook._();

  factory BaseBook([updates(BaseBookBuilder b)]) = _$BaseBook;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseBook.serializer, this));
  }

  static BaseBook fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseBook.serializer, json.decode(jsonString));
  }

  static Serializer<BaseBook> get serializer => _$baseBookSerializer;


}
