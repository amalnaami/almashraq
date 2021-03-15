library quote;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'quote.g.dart';

abstract class Quote implements Built<Quote, QuoteBuilder> {

  @nullable
  int get id;
  @nullable
  String get quotation_text;
  @nullable
  Translations get translations;
  @nullable
  String get image;
  @nullable
  Book get book;
  @nullable
  String get user_name;
  @nullable
  String get user_image;

  Quote._();

  factory Quote([updates(QuoteBuilder b)]) = _$Quote;

  String toJson() {
    return json.encode(serializers.serializeWith(Quote.serializer, this));
  }

  static Quote fromJson(String jsonString) {
    return serializers.deserializeWith(
        Quote.serializer, json.decode(jsonString));
  }

  static Serializer<Quote> get serializer => _$quoteSerializer;

  String getBookName(String languageCode) {
    return languageCode == 'ar' ? translations?.ar?.book_name : translations?.en?.book_name;
  }
  String getAuthorName(String languageCode) {
    return languageCode == 'ar' ? translations?.ar?.author_name : translations?.en?.author_name;
  }
}
