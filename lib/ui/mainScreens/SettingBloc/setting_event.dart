library setting_event;

import 'dart:io';
import 'package:built_value/built_value.dart';

part 'setting_event.g.dart';

abstract class SettingEvent {}

abstract class ChangeLanguage extends SettingEvent
    implements Built<ChangeLanguage, ChangeLanguageBuilder> {
  int get idLang;
  ChangeLanguage._();

  factory ChangeLanguage([updates(ChangeLanguageBuilder b)]) = _$ChangeLanguage;
}
abstract class GetLanguage extends SettingEvent
    implements Built<GetLanguage, GetLanguageBuilder> {
  GetLanguage._();

  factory GetLanguage([updates(GetLanguageBuilder b)]) = _$GetLanguage;
}
abstract class GetAppLanguage extends SettingEvent
    implements Built<GetAppLanguage, GetAppLanguageBuilder> {
  // fields go here

  GetAppLanguage._();

  factory GetAppLanguage([updates(GetAppLanguageBuilder b)]) = _$GetAppLanguage;
}

abstract class SetAppLanguage extends SettingEvent
    implements Built<SetAppLanguage, SetAppLanguageBuilder> {
  // fields go here

  int get language;

  SetAppLanguage._();

  factory SetAppLanguage([updates(SetAppLanguageBuilder b)]) = _$SetAppLanguage;
}

abstract class GetIsLogin extends SettingEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  // fields go here

  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}

abstract class GetProfileData extends SettingEvent
    implements Built<GetProfileData, GetProfileDataBuilder> {
  // fields go here

  GetProfileData._();

  factory GetProfileData([updates(GetProfileDataBuilder b)]) =
  _$GetProfileData;
}

abstract class GetUserQuote extends SettingEvent
    implements Built<GetUserQuote, GetUserQuoteBuilder> {
  // fields go here

  GetUserQuote._();

  factory GetUserQuote([updates(GetUserQuoteBuilder b)]) =
  _$GetUserQuote;
}

abstract class GetUserReview extends SettingEvent
    implements Built<GetUserReview, GetUserReviewBuilder> {
  // fields go here

  GetUserReview._();

  factory GetUserReview([updates(GetUserReviewBuilder b)]) =
  _$GetUserReview;
}
