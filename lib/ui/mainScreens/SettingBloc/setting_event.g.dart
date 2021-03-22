// GENERATED CODE - DO NOT MODIFY BY HAND

part of setting_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearState extends ClearState {
  factory _$ClearState([void Function(ClearStateBuilder) updates]) =>
      (new ClearStateBuilder()..update(updates)).build();

  _$ClearState._() : super._();

  @override
  ClearState rebuild(void Function(ClearStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearStateBuilder toBuilder() => new ClearStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearState;
  }

  @override
  int get hashCode {
    return 338996177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearState').toString();
  }
}

class ClearStateBuilder implements Builder<ClearState, ClearStateBuilder> {
  _$ClearState _$v;

  ClearStateBuilder();

  @override
  void replace(ClearState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearState;
  }

  @override
  void update(void Function(ClearStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearState build() {
    final _$result = _$v ?? new _$ClearState._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeLanguage extends ChangeLanguage {
  @override
  final int idLang;

  factory _$ChangeLanguage([void Function(ChangeLanguageBuilder) updates]) =>
      (new ChangeLanguageBuilder()..update(updates)).build();

  _$ChangeLanguage._({this.idLang}) : super._() {
    if (idLang == null) {
      throw new BuiltValueNullFieldError('ChangeLanguage', 'idLang');
    }
  }

  @override
  ChangeLanguage rebuild(void Function(ChangeLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeLanguageBuilder toBuilder() =>
      new ChangeLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeLanguage && idLang == other.idLang;
  }

  @override
  int get hashCode {
    return $jf($jc(0, idLang.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeLanguage')
          ..add('idLang', idLang))
        .toString();
  }
}

class ChangeLanguageBuilder
    implements Builder<ChangeLanguage, ChangeLanguageBuilder> {
  _$ChangeLanguage _$v;

  int _idLang;
  int get idLang => _$this._idLang;
  set idLang(int idLang) => _$this._idLang = idLang;

  ChangeLanguageBuilder();

  ChangeLanguageBuilder get _$this {
    if (_$v != null) {
      _idLang = _$v.idLang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeLanguage;
  }

  @override
  void update(void Function(ChangeLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeLanguage build() {
    final _$result = _$v ?? new _$ChangeLanguage._(idLang: idLang);
    replace(_$result);
    return _$result;
  }
}

class _$GetLanguage extends GetLanguage {
  factory _$GetLanguage([void Function(GetLanguageBuilder) updates]) =>
      (new GetLanguageBuilder()..update(updates)).build();

  _$GetLanguage._() : super._();

  @override
  GetLanguage rebuild(void Function(GetLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLanguageBuilder toBuilder() => new GetLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLanguage;
  }

  @override
  int get hashCode {
    return 22165669;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetLanguage').toString();
  }
}

class GetLanguageBuilder implements Builder<GetLanguage, GetLanguageBuilder> {
  _$GetLanguage _$v;

  GetLanguageBuilder();

  @override
  void replace(GetLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLanguage;
  }

  @override
  void update(void Function(GetLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLanguage build() {
    final _$result = _$v ?? new _$GetLanguage._();
    replace(_$result);
    return _$result;
  }
}

class _$GetAppLanguage extends GetAppLanguage {
  factory _$GetAppLanguage([void Function(GetAppLanguageBuilder) updates]) =>
      (new GetAppLanguageBuilder()..update(updates)).build();

  _$GetAppLanguage._() : super._();

  @override
  GetAppLanguage rebuild(void Function(GetAppLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAppLanguageBuilder toBuilder() =>
      new GetAppLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAppLanguage;
  }

  @override
  int get hashCode {
    return 42217207;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetAppLanguage').toString();
  }
}

class GetAppLanguageBuilder
    implements Builder<GetAppLanguage, GetAppLanguageBuilder> {
  _$GetAppLanguage _$v;

  GetAppLanguageBuilder();

  @override
  void replace(GetAppLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetAppLanguage;
  }

  @override
  void update(void Function(GetAppLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAppLanguage build() {
    final _$result = _$v ?? new _$GetAppLanguage._();
    replace(_$result);
    return _$result;
  }
}

class _$SetAppLanguage extends SetAppLanguage {
  @override
  final int language;

  factory _$SetAppLanguage([void Function(SetAppLanguageBuilder) updates]) =>
      (new SetAppLanguageBuilder()..update(updates)).build();

  _$SetAppLanguage._({this.language}) : super._() {
    if (language == null) {
      throw new BuiltValueNullFieldError('SetAppLanguage', 'language');
    }
  }

  @override
  SetAppLanguage rebuild(void Function(SetAppLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAppLanguageBuilder toBuilder() =>
      new SetAppLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAppLanguage && language == other.language;
  }

  @override
  int get hashCode {
    return $jf($jc(0, language.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetAppLanguage')
          ..add('language', language))
        .toString();
  }
}

class SetAppLanguageBuilder
    implements Builder<SetAppLanguage, SetAppLanguageBuilder> {
  _$SetAppLanguage _$v;

  int _language;
  int get language => _$this._language;
  set language(int language) => _$this._language = language;

  SetAppLanguageBuilder();

  SetAppLanguageBuilder get _$this {
    if (_$v != null) {
      _language = _$v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetAppLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetAppLanguage;
  }

  @override
  void update(void Function(SetAppLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetAppLanguage build() {
    final _$result = _$v ?? new _$SetAppLanguage._(language: language);
    replace(_$result);
    return _$result;
  }
}

class _$GetIsLogin extends GetIsLogin {
  factory _$GetIsLogin([void Function(GetIsLoginBuilder) updates]) =>
      (new GetIsLoginBuilder()..update(updates)).build();

  _$GetIsLogin._() : super._();

  @override
  GetIsLogin rebuild(void Function(GetIsLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIsLoginBuilder toBuilder() => new GetIsLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIsLogin;
  }

  @override
  int get hashCode {
    return 118379423;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetIsLogin').toString();
  }
}

class GetIsLoginBuilder implements Builder<GetIsLogin, GetIsLoginBuilder> {
  _$GetIsLogin _$v;

  GetIsLoginBuilder();

  @override
  void replace(GetIsLogin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetIsLogin;
  }

  @override
  void update(void Function(GetIsLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetIsLogin build() {
    final _$result = _$v ?? new _$GetIsLogin._();
    replace(_$result);
    return _$result;
  }
}

class _$GetProfileData extends GetProfileData {
  factory _$GetProfileData([void Function(GetProfileDataBuilder) updates]) =>
      (new GetProfileDataBuilder()..update(updates)).build();

  _$GetProfileData._() : super._();

  @override
  GetProfileData rebuild(void Function(GetProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileDataBuilder toBuilder() =>
      new GetProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfileData;
  }

  @override
  int get hashCode {
    return 1051246104;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetProfileData').toString();
  }
}

class GetProfileDataBuilder
    implements Builder<GetProfileData, GetProfileDataBuilder> {
  _$GetProfileData _$v;

  GetProfileDataBuilder();

  @override
  void replace(GetProfileData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetProfileData;
  }

  @override
  void update(void Function(GetProfileDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProfileData build() {
    final _$result = _$v ?? new _$GetProfileData._();
    replace(_$result);
    return _$result;
  }
}

class _$GetUserQuote extends GetUserQuote {
  factory _$GetUserQuote([void Function(GetUserQuoteBuilder) updates]) =>
      (new GetUserQuoteBuilder()..update(updates)).build();

  _$GetUserQuote._() : super._();

  @override
  GetUserQuote rebuild(void Function(GetUserQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserQuoteBuilder toBuilder() => new GetUserQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserQuote;
  }

  @override
  int get hashCode {
    return 359434673;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetUserQuote').toString();
  }
}

class GetUserQuoteBuilder
    implements Builder<GetUserQuote, GetUserQuoteBuilder> {
  _$GetUserQuote _$v;

  GetUserQuoteBuilder();

  @override
  void replace(GetUserQuote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUserQuote;
  }

  @override
  void update(void Function(GetUserQuoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserQuote build() {
    final _$result = _$v ?? new _$GetUserQuote._();
    replace(_$result);
    return _$result;
  }
}

class _$GetUserReview extends GetUserReview {
  factory _$GetUserReview([void Function(GetUserReviewBuilder) updates]) =>
      (new GetUserReviewBuilder()..update(updates)).build();

  _$GetUserReview._() : super._();

  @override
  GetUserReview rebuild(void Function(GetUserReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserReviewBuilder toBuilder() => new GetUserReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserReview;
  }

  @override
  int get hashCode {
    return 259684550;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetUserReview').toString();
  }
}

class GetUserReviewBuilder
    implements Builder<GetUserReview, GetUserReviewBuilder> {
  _$GetUserReview _$v;

  GetUserReviewBuilder();

  @override
  void replace(GetUserReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUserReview;
  }

  @override
  void update(void Function(GetUserReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserReview build() {
    final _$result = _$v ?? new _$GetUserReview._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeStatus extends ChangeStatus {
  factory _$ChangeStatus([void Function(ChangeStatusBuilder) updates]) =>
      (new ChangeStatusBuilder()..update(updates)).build();

  _$ChangeStatus._() : super._();

  @override
  ChangeStatus rebuild(void Function(ChangeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStatusBuilder toBuilder() => new ChangeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStatus;
  }

  @override
  int get hashCode {
    return 20091075;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ChangeStatus').toString();
  }
}

class ChangeStatusBuilder
    implements Builder<ChangeStatus, ChangeStatusBuilder> {
  _$ChangeStatus _$v;

  ChangeStatusBuilder();

  @override
  void replace(ChangeStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeStatus;
  }

  @override
  void update(void Function(ChangeStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeStatus build() {
    final _$result = _$v ?? new _$ChangeStatus._();
    replace(_$result);
    return _$result;
  }
}

class _$LogOut extends LogOut {
  factory _$LogOut([void Function(LogOutBuilder) updates]) =>
      (new LogOutBuilder()..update(updates)).build();

  _$LogOut._() : super._();

  @override
  LogOut rebuild(void Function(LogOutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogOutBuilder toBuilder() => new LogOutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogOut;
  }

  @override
  int get hashCode {
    return 704536295;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LogOut').toString();
  }
}

class LogOutBuilder implements Builder<LogOut, LogOutBuilder> {
  _$LogOut _$v;

  LogOutBuilder();

  @override
  void replace(LogOut other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LogOut;
  }

  @override
  void update(void Function(LogOutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogOut build() {
    final _$result = _$v ?? new _$LogOut._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeUserName extends ChangeUserName {
  @override
  final String value;

  factory _$ChangeUserName([void Function(ChangeUserNameBuilder) updates]) =>
      (new ChangeUserNameBuilder()..update(updates)).build();

  _$ChangeUserName._({this.value}) : super._();

  @override
  ChangeUserName rebuild(void Function(ChangeUserNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeUserNameBuilder toBuilder() =>
      new ChangeUserNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeUserName && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeUserName')..add('value', value))
        .toString();
  }
}

class ChangeUserNameBuilder
    implements Builder<ChangeUserName, ChangeUserNameBuilder> {
  _$ChangeUserName _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeUserNameBuilder();

  ChangeUserNameBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeUserName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeUserName;
  }

  @override
  void update(void Function(ChangeUserNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeUserName build() {
    final _$result = _$v ?? new _$ChangeUserName._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeName extends ChangeName {
  @override
  final String value;

  factory _$ChangeName([void Function(ChangeNameBuilder) updates]) =>
      (new ChangeNameBuilder()..update(updates)).build();

  _$ChangeName._({this.value}) : super._();

  @override
  ChangeName rebuild(void Function(ChangeNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeNameBuilder toBuilder() => new ChangeNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeName && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeName')..add('value', value))
        .toString();
  }
}

class ChangeNameBuilder implements Builder<ChangeName, ChangeNameBuilder> {
  _$ChangeName _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeNameBuilder();

  ChangeNameBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeName;
  }

  @override
  void update(void Function(ChangeNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeName build() {
    final _$result = _$v ?? new _$ChangeName._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeEmail extends ChangeEmail {
  @override
  final String value;

  factory _$ChangeEmail([void Function(ChangeEmailBuilder) updates]) =>
      (new ChangeEmailBuilder()..update(updates)).build();

  _$ChangeEmail._({this.value}) : super._();

  @override
  ChangeEmail rebuild(void Function(ChangeEmailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeEmailBuilder toBuilder() => new ChangeEmailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeEmail && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeEmail')..add('value', value))
        .toString();
  }
}

class ChangeEmailBuilder implements Builder<ChangeEmail, ChangeEmailBuilder> {
  _$ChangeEmail _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeEmailBuilder();

  ChangeEmailBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeEmail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeEmail;
  }

  @override
  void update(void Function(ChangeEmailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeEmail build() {
    final _$result = _$v ?? new _$ChangeEmail._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeGender extends ChangeGender {
  @override
  final String value;

  factory _$ChangeGender([void Function(ChangeGenderBuilder) updates]) =>
      (new ChangeGenderBuilder()..update(updates)).build();

  _$ChangeGender._({this.value}) : super._();

  @override
  ChangeGender rebuild(void Function(ChangeGenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeGenderBuilder toBuilder() => new ChangeGenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeGender && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeGender')..add('value', value))
        .toString();
  }
}

class ChangeGenderBuilder
    implements Builder<ChangeGender, ChangeGenderBuilder> {
  _$ChangeGender _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeGenderBuilder();

  ChangeGenderBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeGender other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeGender;
  }

  @override
  void update(void Function(ChangeGenderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeGender build() {
    final _$result = _$v ?? new _$ChangeGender._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCountry extends ChangeCountry {
  @override
  final String value;

  factory _$ChangeCountry([void Function(ChangeCountryBuilder) updates]) =>
      (new ChangeCountryBuilder()..update(updates)).build();

  _$ChangeCountry._({this.value}) : super._();

  @override
  ChangeCountry rebuild(void Function(ChangeCountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCountryBuilder toBuilder() => new ChangeCountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCountry && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeCountry')..add('value', value))
        .toString();
  }
}

class ChangeCountryBuilder
    implements Builder<ChangeCountry, ChangeCountryBuilder> {
  _$ChangeCountry _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeCountryBuilder();

  ChangeCountryBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCountry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeCountry;
  }

  @override
  void update(void Function(ChangeCountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeCountry build() {
    final _$result = _$v ?? new _$ChangeCountry._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeTele extends ChangeTele {
  @override
  final String value;

  factory _$ChangeTele([void Function(ChangeTeleBuilder) updates]) =>
      (new ChangeTeleBuilder()..update(updates)).build();

  _$ChangeTele._({this.value}) : super._();

  @override
  ChangeTele rebuild(void Function(ChangeTeleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeTeleBuilder toBuilder() => new ChangeTeleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeTele && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeTele')..add('value', value))
        .toString();
  }
}

class ChangeTeleBuilder implements Builder<ChangeTele, ChangeTeleBuilder> {
  _$ChangeTele _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ChangeTeleBuilder();

  ChangeTeleBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeTele other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeTele;
  }

  @override
  void update(void Function(ChangeTeleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeTele build() {
    final _$result = _$v ?? new _$ChangeTele._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$TryEdit extends TryEdit {
  @override
  final String username;
  @override
  final String email;
  @override
  final String tele;
  @override
  final String gender;
  @override
  final String country_code;
  @override
  final File image;

  factory _$TryEdit([void Function(TryEditBuilder) updates]) =>
      (new TryEditBuilder()..update(updates)).build();

  _$TryEdit._(
      {this.username,
      this.email,
      this.tele,
      this.gender,
      this.country_code,
      this.image})
      : super._();

  @override
  TryEdit rebuild(void Function(TryEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryEditBuilder toBuilder() => new TryEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryEdit &&
        username == other.username &&
        email == other.email &&
        tele == other.tele &&
        gender == other.gender &&
        country_code == other.country_code &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, username.hashCode), email.hashCode),
                    tele.hashCode),
                gender.hashCode),
            country_code.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryEdit')
          ..add('username', username)
          ..add('email', email)
          ..add('tele', tele)
          ..add('gender', gender)
          ..add('country_code', country_code)
          ..add('image', image))
        .toString();
  }
}

class TryEditBuilder implements Builder<TryEdit, TryEditBuilder> {
  _$TryEdit _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _tele;
  String get tele => _$this._tele;
  set tele(String tele) => _$this._tele = tele;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _country_code;
  String get country_code => _$this._country_code;
  set country_code(String country_code) => _$this._country_code = country_code;

  File _image;
  File get image => _$this._image;
  set image(File image) => _$this._image = image;

  TryEditBuilder();

  TryEditBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _email = _$v.email;
      _tele = _$v.tele;
      _gender = _$v.gender;
      _country_code = _$v.country_code;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryEdit other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TryEdit;
  }

  @override
  void update(void Function(TryEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryEdit build() {
    final _$result = _$v ??
        new _$TryEdit._(
            username: username,
            email: email,
            tele: tele,
            gender: gender,
            country_code: country_code,
            image: image);
    replace(_$result);
    return _$result;
  }
}

class _$GetCountry extends GetCountry {
  factory _$GetCountry([void Function(GetCountryBuilder) updates]) =>
      (new GetCountryBuilder()..update(updates)).build();

  _$GetCountry._() : super._();

  @override
  GetCountry rebuild(void Function(GetCountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCountryBuilder toBuilder() => new GetCountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCountry;
  }

  @override
  int get hashCode {
    return 858342468;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCountry').toString();
  }
}

class GetCountryBuilder implements Builder<GetCountry, GetCountryBuilder> {
  _$GetCountry _$v;

  GetCountryBuilder();

  @override
  void replace(GetCountry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCountry;
  }

  @override
  void update(void Function(GetCountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCountry build() {
    final _$result = _$v ?? new _$GetCountry._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
