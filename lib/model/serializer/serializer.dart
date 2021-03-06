library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_language.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/country_model/country_translations.dart';
import 'package:maktabeh_app/model/invoice/invoice.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/notifications/notifications.dart';
import 'package:maktabeh_app/model/packages/packages.dart';
import 'package:maktabeh_app/model/paginator/paginator.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/rate/rate.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/review_quote_user_model/link_data.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/translations/about_us_language.dart';
import 'package:maktabeh_app/model/translations/about_us_translation.dart';
import 'package:maktabeh_app/model/translations/author_language.dart';
import 'package:maktabeh_app/model/translations/author_translation.dart';
import 'package:maktabeh_app/model/translations/books_data.dart';
import 'package:maktabeh_app/model/translations/books_translation.dart';
import 'package:maktabeh_app/model/translations/translations.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/model/user/token.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:maktabeh_app/model/user/user_model.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category.dart';

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
  CountryModel,
  CountryLanguage,
  CountryTranslations,
  UserModel,
  UserData,
  BooksTranslation,
  AuthorTranslation,
  AuthorLanguage,
  BooksData,
  Paginator,
  BaseBook,
  BookByCategoryModel,
  Token,
  ProfileModel,
  ReviewQuoteUserModel,
  LinkData,
  AboutUs,
  AboutUsLanguage,
  AboutUsTranslation,
  AppRate,
  Rate,
  Notifications,
  Invoice,
  Packages
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
          () => ListBuilder<Book>())
        ..addBuilderFactory(
            (FullType(
                BuiltList,
                [
                    const FullType(CountryModel),
                ],
            )),
                () => ListBuilder<CountryModel>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(UserModel),
            ],
          )),
              () => ListBuilder<UserModel>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(ProfileModel),
            ],
          )),
              () => ListBuilder<ProfileModel>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(ReviewQuoteUserModel),
            ],
          )),
              () => ListBuilder<ReviewQuoteUserModel>())

      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(UserData),
            ],
          )),
              () => ListBuilder<UserData>())

  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(Review),
        ],
      )),
          () => ListBuilder<Review>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(Quote),
        ],
      )),
          () => ListBuilder<Quote>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(Rate),
        ],
      )),
          () => ListBuilder<Rate>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(Packages),
        ],
      )),
          () => ListBuilder<Packages>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(Notifications),
        ],
      )),
          () => ListBuilder<Notifications>())
    ).build();
