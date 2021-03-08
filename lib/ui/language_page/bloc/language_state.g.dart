// GENERATED CODE - DO NOT MODIFY BY HAND

part of language_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LanguageState extends LanguageState {
  @override
  final bool isLoading;
  @override
  final int lang;

  factory _$LanguageState([void Function(LanguageStateBuilder) updates]) =>
      (new LanguageStateBuilder()..update(updates)).build();

  _$LanguageState._({this.isLoading, this.lang}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('LanguageState', 'isLoading');
    }
    if (lang == null) {
      throw new BuiltValueNullFieldError('LanguageState', 'lang');
    }
  }

  @override
  LanguageState rebuild(void Function(LanguageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageStateBuilder toBuilder() => new LanguageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageState &&
        isLoading == other.isLoading &&
        lang == other.lang;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isLoading.hashCode), lang.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LanguageState')
          ..add('isLoading', isLoading)
          ..add('lang', lang))
        .toString();
  }
}

class LanguageStateBuilder
    implements Builder<LanguageState, LanguageStateBuilder> {
  _$LanguageState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _lang;
  int get lang => _$this._lang;
  set lang(int lang) => _$this._lang = lang;

  LanguageStateBuilder();

  LanguageStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _lang = _$v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LanguageState;
  }

  @override
  void update(void Function(LanguageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LanguageState build() {
    final _$result =
        _$v ?? new _$LanguageState._(isLoading: isLoading, lang: lang);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
