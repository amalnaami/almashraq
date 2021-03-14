// GENERATED CODE - DO NOT MODIFY BY HAND

part of setting_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingState extends SettingState {
  @override
  final bool isLoading;
  @override
  final int lang;
  @override
  final bool isLogin;
  @override
  final String error;

  factory _$SettingState([void Function(SettingStateBuilder) updates]) =>
      (new SettingStateBuilder()..update(updates)).build();

  _$SettingState._({this.isLoading, this.lang, this.isLogin, this.error})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SettingState', 'isLoading');
    }
    if (lang == null) {
      throw new BuiltValueNullFieldError('SettingState', 'lang');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('SettingState', 'isLogin');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SettingState', 'error');
    }
  }

  @override
  SettingState rebuild(void Function(SettingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingStateBuilder toBuilder() => new SettingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingState &&
        isLoading == other.isLoading &&
        lang == other.lang &&
        isLogin == other.isLogin &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), lang.hashCode), isLogin.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingState')
          ..add('isLoading', isLoading)
          ..add('lang', lang)
          ..add('isLogin', isLogin)
          ..add('error', error))
        .toString();
  }
}

class SettingStateBuilder
    implements Builder<SettingState, SettingStateBuilder> {
  _$SettingState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _lang;
  int get lang => _$this._lang;
  set lang(int lang) => _$this._lang = lang;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  SettingStateBuilder();

  SettingStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _lang = _$v.lang;
      _isLogin = _$v.isLogin;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SettingState;
  }

  @override
  void update(void Function(SettingStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingState build() {
    final _$result = _$v ??
        new _$SettingState._(
            isLoading: isLoading, lang: lang, isLogin: isLogin, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
