// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_rate_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddRateState extends AddRateState {
  @override
  final bool isLoading;
  @override
  final bool isLogin;
  @override
  final String error;
  @override
  final bool success;

  factory _$AddRateState([void Function(AddRateStateBuilder) updates]) =>
      (new AddRateStateBuilder()..update(updates)).build();

  _$AddRateState._({this.isLoading, this.isLogin, this.error, this.success})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AddRateState', 'isLoading');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AddRateState', 'isLogin');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AddRateState', 'error');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('AddRateState', 'success');
    }
  }

  @override
  AddRateState rebuild(void Function(AddRateStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddRateStateBuilder toBuilder() => new AddRateStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddRateState &&
        isLoading == other.isLoading &&
        isLogin == other.isLogin &&
        error == other.error &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), isLogin.hashCode), error.hashCode),
        success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddRateState')
          ..add('isLoading', isLoading)
          ..add('isLogin', isLogin)
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class AddRateStateBuilder
    implements Builder<AddRateState, AddRateStateBuilder> {
  _$AddRateState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  AddRateStateBuilder();

  AddRateStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _isLogin = _$v.isLogin;
      _error = _$v.error;
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddRateState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddRateState;
  }

  @override
  void update(void Function(AddRateStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddRateState build() {
    final _$result = _$v ??
        new _$AddRateState._(
            isLoading: isLoading,
            isLogin: isLogin,
            error: error,
            success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
