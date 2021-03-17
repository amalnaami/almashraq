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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
