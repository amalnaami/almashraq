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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
