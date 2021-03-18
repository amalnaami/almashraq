// GENERATED CODE - DO NOT MODIFY BY HAND

part of about_us_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AboutUsState extends AboutUsState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final AboutUs aboutUs;

  factory _$AboutUsState([void Function(AboutUsStateBuilder) updates]) =>
      (new AboutUsStateBuilder()..update(updates)).build();

  _$AboutUsState._({this.isLoading, this.error, this.aboutUs}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AboutUsState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AboutUsState', 'error');
    }
  }

  @override
  AboutUsState rebuild(void Function(AboutUsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutUsStateBuilder toBuilder() => new AboutUsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutUsState &&
        isLoading == other.isLoading &&
        error == other.error &&
        aboutUs == other.aboutUs;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), aboutUs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AboutUsState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('aboutUs', aboutUs))
        .toString();
  }
}

class AboutUsStateBuilder
    implements Builder<AboutUsState, AboutUsStateBuilder> {
  _$AboutUsState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  AboutUsBuilder _aboutUs;
  AboutUsBuilder get aboutUs => _$this._aboutUs ??= new AboutUsBuilder();
  set aboutUs(AboutUsBuilder aboutUs) => _$this._aboutUs = aboutUs;

  AboutUsStateBuilder();

  AboutUsStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _aboutUs = _$v.aboutUs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutUsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AboutUsState;
  }

  @override
  void update(void Function(AboutUsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AboutUsState build() {
    _$AboutUsState _$result;
    try {
      _$result = _$v ??
          new _$AboutUsState._(
              isLoading: isLoading, error: error, aboutUs: _aboutUs?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'aboutUs';
        _aboutUs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AboutUsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
