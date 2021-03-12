


library books_details;
import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/all_books_model/author_data.dart';
import 'package:maktabeh_app/model/all_books_model/books_translation.dart';
import 'package:maktabeh_app/model/all_books_model/section_data.dart';
import '../serializer/serializer.dart';
part 'books_details.g.dart';

abstract class BooksDetails implements Built<BooksDetails, BooksDetailsBuilder> {

  @nullable
  int get id;

  @nullable
  String get pages_count;
  @nullable
  String get publish_year;

  @nullable
  int get rate;

  @nullable
  String get size;
  @nullable
  String get image;
  @nullable
  String get book_type;
  @nullable
  String get isbn;
  @nullable
  String get quotations_count;
  @nullable
  String get reviews_count;
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
  @nullable
  BooksTranslation get translations;
  @nullable
  SectionData get section;
  @nullable
  AuthorData get author;

  BooksDetails._();

  factory BooksDetails([updates(BooksDetailsBuilder b)]) = _$BooksDetails;

  String toJson() {
    return json.encode(serializers.serializeWith(BooksDetails.serializer, this));
  }

  static BooksDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        BooksDetails.serializer, json.decode(jsonString));
  }

  static Serializer<BooksDetails> get serializer => _$booksDetailsSerializer;


  String getName(String languageCode) {
    return languageCode == 'ar' ? translations.ar.name : translations.en.name;
  }
  String getDescription(String languageCode) {
    return languageCode == 'ar' ? translations.ar.description : translations.en.description;
  }
  String getPublish(String languageCode) {
    return languageCode == 'ar' ? translations.ar.publish : translations.en.publish;
  }
}
