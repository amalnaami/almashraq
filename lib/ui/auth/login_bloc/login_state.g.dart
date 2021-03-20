// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool successLogin;
  @override
  final bool isLogin;
  @override
  final bool successSocail;

  factory _$LoginState([void Function(LoginStateBuilder) updates]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._(
      {this.isLoading,
      this.error,
      this.successLogin,
      this.isLogin,
      this.successSocail})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('LoginState', 'error');
    }
    if (successLogin == null) {
      throw new BuiltValueNullFieldError('LoginState', 'successLogin');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('LoginState', 'isLogin');
    }
    if (successSocail == null) {
      throw new BuiltValueNullFieldError('LoginState', 'successSocail');
    }
  }

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        isLoading == other.isLoading &&
        error == other.error &&
        successLogin == other.successLogin &&
        isLogin == other.isLogin &&
        successSocail == other.successSocail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                successLogin.hashCode),
            isLogin.hashCode),
        successSocail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('successLogin', successLogin)
          ..add('isLogin', isLogin)
          ..add('successSocail', successSocail))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _successLogin;
  bool get successLogin => _$this._successLogin;
  set successLogin(bool successLogin) => _$this._successLogin = successLogin;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  bool _successSocail;
  bool get successSocail => _$this._successSocail;
  set successSocail(bool successSocail) =>
      _$this._successSocail = successSocail;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _successLogin = _$v.successLogin;
      _isLogin = _$v.isLogin;
      _successSocail = _$v.successSocail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    final _$result = _$v ??
        new _$LoginState._(
            isLoading: isLoading,
            error: error,
            successLogin: successLogin,
            isLogin: isLogin,
            successSocail: successSocail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
