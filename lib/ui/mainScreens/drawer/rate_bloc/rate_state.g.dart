// GENERATED CODE - DO NOT MODIFY BY HAND

part of rate_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateState extends RateState {
  @override
  final bool isLoading;
  @override
  final bool isLogin;
  @override
  final String error;
  @override
  final AppRate rates;

  factory _$RateState([void Function(RateStateBuilder) updates]) =>
      (new RateStateBuilder()..update(updates)).build();

  _$RateState._({this.isLoading, this.isLogin, this.error, this.rates})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('RateState', 'isLoading');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('RateState', 'isLogin');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('RateState', 'error');
    }
  }

  @override
  RateState rebuild(void Function(RateStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateStateBuilder toBuilder() => new RateStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateState &&
        isLoading == other.isLoading &&
        isLogin == other.isLogin &&
        error == other.error &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), isLogin.hashCode), error.hashCode),
        rates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RateState')
          ..add('isLoading', isLoading)
          ..add('isLogin', isLogin)
          ..add('error', error)
          ..add('rates', rates))
        .toString();
  }
}

class RateStateBuilder implements Builder<RateState, RateStateBuilder> {
  _$RateState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  AppRateBuilder _rates;
  AppRateBuilder get rates => _$this._rates ??= new AppRateBuilder();
  set rates(AppRateBuilder rates) => _$this._rates = rates;

  RateStateBuilder();

  RateStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _isLogin = _$v.isLogin;
      _error = _$v.error;
      _rates = _$v.rates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RateState;
  }

  @override
  void update(void Function(RateStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RateState build() {
    _$RateState _$result;
    try {
      _$result = _$v ??
          new _$RateState._(
              isLoading: isLoading,
              isLogin: isLogin,
              error: error,
              rates: _rates?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rates';
        _rates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RateState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
