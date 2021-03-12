library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_language.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/country_model/country_translations.dart';
import 'package:maktabeh_app/model/language/language.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/translations/translations.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/model/country_model/country_translations.dart';
import 'package:maktabeh_app/model/country_model/country_language.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

part 'serializer.g.dart';

@SerializersFor(const [
    User,
    Language,
    Translations,
    LoginModel,
    Category,
  CountryModel,
  CountryLanguage,
  CountryTranslations,
  UserModel,
  UserData
])
final Serializers serializers =
    (_$serializers.toBuilder()
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
              const FullType(UserData),
            ],
          )),
              () => ListBuilder<UserData>())
    ).build();
