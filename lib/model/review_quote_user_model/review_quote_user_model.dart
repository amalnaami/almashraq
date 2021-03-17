

library review_quote_user_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'review_quote_user_model.g.dart';

abstract class ReviewQuoteUserModel implements Built<ReviewQuoteUserModel, ReviewQuoteUserModelBuilder> {

  @nullable
  int get id;
  @nullable
  String get quotation_text;
  @nullable
  String get review_text;
  @nullable
  Translations get translations;
  @nullable
  String get user_name;
  @nullable
  String get user_image;
  @nullable
  String get rating;
  @nullable
  String get date;
  @nullable
  Book get book;


  ReviewQuoteUserModel._();

  factory ReviewQuoteUserModel([updates(ReviewQuoteUserModelBuilder b)]) = _$ReviewQuoteUserModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ReviewQuoteUserModel.serializer, this));
  }

  static ReviewQuoteUserModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReviewQuoteUserModel.serializer, json.decode(jsonString));
  }

  static Serializer<ReviewQuoteUserModel> get serializer => _$reviewQuoteUserModelSerializer;
  String getBookName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.book_name : translations.en.book_name;
  }
  String getAuthorName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.author_name : translations.en.author_name;
  }
}
