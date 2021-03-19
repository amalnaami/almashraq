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
abstract class ChangeStatus extends SettingEvent
    implements Built<ChangeStatus, ChangeStatusBuilder> {
  // fields go here

  ChangeStatus._();

  factory ChangeStatus([updates(ChangeStatusBuilder b)]) = _$ChangeStatus;
}

abstract class LogOut extends SettingEvent
    implements Built<LogOut, LogOutBuilder> {
  // fields go here

  LogOut._();

  factory LogOut([updates(LogOutBuilder b)]) = _$LogOut;
}

abstract class ChangeName extends SettingEvent
    implements Built<ChangeName, ChangeNameBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeName._();

  factory ChangeName([updates(ChangeNameBuilder b)]) = _$ChangeName;
}



abstract class ChangeUserName extends SettingEvent
    implements Built<ChangeUserName, ChangeUserNameBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeUserName._();

  factory ChangeUserName([updates(ChangeUserNameBuilder b)]) = _$ChangeUserName;
}


abstract class ChangeEmail extends SettingEvent
    implements Built<ChangeEmail, ChangeEmailBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeEmail._();

  factory ChangeEmail([updates(ChangeEmailBuilder b)]) = _$ChangeEmail;
}


abstract class ChangeGender extends SettingEvent
    implements Built<ChangeGender, ChangeGenderBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeGender._();

  factory ChangeGender([updates(ChangeGenderBuilder b)]) = _$ChangeGender;
}

abstract class ChangeCountry extends SettingEvent
    implements Built<ChangeCountry, ChangeCountryBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeCountry._();

  factory ChangeCountry([updates(ChangeCountryBuilder b)]) = _$ChangeCountry;
}


abstract class ChangeTele extends SettingEvent
    implements Built<ChangeTele, ChangeTeleBuilder> {
  // fields go here
  @nullable
  String get value;

  ChangeTele._();

  factory ChangeTele([updates(ChangeTeleBuilder b)]) = _$ChangeTele;
}

abstract class TryEdit extends SettingEvent
    implements Built<TryEdit, TryEditBuilder> {
  // fields go here
  @nullable

  String get name;
  @nullable

  String get username;
  @nullable

  String get email;
  @nullable

  String get tele;
  @nullable

  String get gender;
  @nullable

  String get country_code;
  @nullable

  @nullable
  File get image;

  TryEdit._();

  factory TryEdit([updates(TryEditBuilder b)]) = _$TryEdit;
}
abstract class GetCountry extends SettingEvent
    implements Built<GetCountry, GetCountryBuilder> {
  GetCountry._();

  factory GetCountry([updates(GetCountryBuilder b)]) = _$GetCountry;
}