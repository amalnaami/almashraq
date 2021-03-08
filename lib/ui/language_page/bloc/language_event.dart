library language_event;

import 'dart:io';
import 'package:built_value/built_value.dart';

part 'language_event.g.dart';

abstract class LanguageEvent {}

abstract class ChangeLanguage extends LanguageEvent
    implements Built<ChangeLanguage, ChangeLanguageBuilder> {
  int get idLang;
  ChangeLanguage._();

  factory ChangeLanguage([updates(ChangeLanguageBuilder b)]) = _$ChangeLanguage;
}
abstract class GetLanguage extends LanguageEvent
    implements Built<GetLanguage, GetLanguageBuilder> {
  GetLanguage._();

  factory GetLanguage([updates(GetLanguageBuilder b)]) = _$GetLanguage;
}
abstract class GetAppLanguage extends LanguageEvent
    implements Built<GetAppLanguage, GetAppLanguageBuilder> {
  // fields go here

  GetAppLanguage._();

  factory GetAppLanguage([updates(GetAppLanguageBuilder b)]) = _$GetAppLanguage;
}

abstract class SetAppLanguage extends LanguageEvent
    implements Built<SetAppLanguage, SetAppLanguageBuilder> {
  // fields go here

  int get language;

  SetAppLanguage._();

  factory SetAppLanguage([updates(SetAppLanguageBuilder b)]) = _$SetAppLanguage;
}