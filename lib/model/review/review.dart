library review;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/translations/translations.dart';

part 'review.g.dart';

abstract class Review implements Built<Review, ReviewBuilder> {

  @nullable
  int get id;
  @nullable
  String get review_text;
  @nullable
  Translations get translations;
  @nullable
  String get image;
  @nullable
  String get rating;
  @nullable
  String get user_name;

  Review._();

  factory Review([updates(ReviewBuilder b)]) = _$Review;

  String toJson() {
    return json.encode(serializers.serializeWith(Review.serializer, this));
  }

  static Review fromJson(String jsonString) {
    return serializers.deserializeWith(
        Review.serializer, json.decode(jsonString));
  }

  static Serializer<Review> get serializer => _$reviewSerializer;

  String getBookName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.book_name : translations.en.book_name;
  }
  String getAuthorName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.author_name : translations.en.author_name;
  }
}
