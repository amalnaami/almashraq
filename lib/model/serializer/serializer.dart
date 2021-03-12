library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/translations/translations.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  User,
  Language,
  Translations,
  LoginModel,
  Category,
  Quote,
  Review,
  Author,
  Book,

])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(Category),
            ],
          )),
          () => ListBuilder<Category>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(Author),
            ],
          )),
          () => ListBuilder<Author>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(Book),
            ],
          )),
          () => ListBuilder<Book>()))
    .build();
