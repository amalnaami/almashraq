library paginator;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'paginator.g.dart';

abstract class Paginator implements Built<Paginator, PaginatorBuilder> {
  @nullable
  int get last_page;
  Paginator._();

  factory Paginator([updates(PaginatorBuilder b)]) = _$Paginator;

  String toJson() {
    return json.encode(serializers.serializeWith(Paginator.serializer, this));
  }

  static Paginator fromJson(String jsonString) {
    return serializers.deserializeWith(
        Paginator.serializer, json.decode(jsonString));
  }

  static Serializer<Paginator> get serializer => _$paginatorSerializer;


}
