


library link_data;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'link_data.g.dart';

abstract class LinkData implements Built<LinkData, LinkDataBuilder> {

  @nullable
  int get id;
  @nullable
  String get book_id;
  @nullable
  String get link1;
  @nullable
  String get name;
  @nullable
  String get name_en;


  LinkData._();

  factory LinkData([updates(LinkDataBuilder b)]) = _$LinkData;

  String toJson() {
    return json.encode(serializers.serializeWith(LinkData.serializer, this));
  }

  static LinkData fromJson(String jsonString) {
    return serializers.deserializeWith(
        LinkData.serializer, json.decode(jsonString));
  }

  static Serializer<LinkData> get serializer => _$linkDataSerializer;
}
