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

  factory _$SettingState([void Function(SettingStateBuilder) updates]) =>
      (new SettingStateBuilder()..update(updates)).build();

  _$SettingState._({this.isLoading, this.lang}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SettingState', 'isLoading');
    }
    if (lang == null) {
      throw new BuiltValueNullFieldError('SettingState', 'lang');
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
        lang == other.lang;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isLoading.hashCode), lang.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingState')
          ..add('isLoading', isLoading)
          ..add('lang', lang))
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

  SettingStateBuilder();

  SettingStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _lang = _$v.lang;
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
    final _$result =
        _$v ?? new _$SettingState._(isLoading: isLoading, lang: lang);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
