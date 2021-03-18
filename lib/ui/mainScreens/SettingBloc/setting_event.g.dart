// GENERATED CODE - DO NOT MODIFY BY HAND

part of setting_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$TryEdit extends TryEdit {
  @override
  final String name;
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
      {this.name,
      this.username,
      this.email,
      this.tele,
      this.gender,
      this.country_code,
      this.image})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'name');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'username');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'email');
    }
    if (tele == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'tele');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'gender');
    }
    if (country_code == null) {
      throw new BuiltValueNullFieldError('TryEdit', 'country_code');
    }
  }

  @override
  TryEdit rebuild(void Function(TryEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryEditBuilder toBuilder() => new TryEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryEdit &&
        name == other.name &&
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
                $jc(
                    $jc($jc($jc(0, name.hashCode), username.hashCode),
                        email.hashCode),
                    tele.hashCode),
                gender.hashCode),
            country_code.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryEdit')
          ..add('name', name)
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

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

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
      _name = _$v.name;
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
            name: name,
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
