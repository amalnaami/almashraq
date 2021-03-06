// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login extends Login {
  @override
  final String userName;
  @override
  final String password;

  factory _$Login([void Function(LoginBuilder) updates]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._({this.userName, this.password}) : super._() {
    if (userName == null) {
      throw new BuiltValueNullFieldError('Login', 'userName');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('Login', 'password');
    }
  }

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login &&
        userName == other.userName &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userName.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('userName', userName)
          ..add('password', password))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginBuilder();

  LoginBuilder get _$this {
    if (_$v != null) {
      _userName = _$v.userName;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final _$result =
        _$v ?? new _$Login._(userName: userName, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$ClearState extends ClearState {
  factory _$ClearState([void Function(ClearStateBuilder) updates]) =>
      (new ClearStateBuilder()..update(updates)).build();

  _$ClearState._() : super._();

  @override
  ClearState rebuild(void Function(ClearStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearStateBuilder toBuilder() => new ClearStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearState;
  }

  @override
  int get hashCode {
    return 338996177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearState').toString();
  }
}

class ClearStateBuilder implements Builder<ClearState, ClearStateBuilder> {
  _$ClearState _$v;

  ClearStateBuilder();

  @override
  void replace(ClearState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearState;
  }

  @override
  void update(void Function(ClearStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearState build() {
    final _$result = _$v ?? new _$ClearState._();
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

class _$SocialLogin extends SocialLogin {
  @override
  final String acessToken;
  @override
  final String typeSocial;

  factory _$SocialLogin([void Function(SocialLoginBuilder) updates]) =>
      (new SocialLoginBuilder()..update(updates)).build();

  _$SocialLogin._({this.acessToken, this.typeSocial}) : super._() {
    if (acessToken == null) {
      throw new BuiltValueNullFieldError('SocialLogin', 'acessToken');
    }
    if (typeSocial == null) {
      throw new BuiltValueNullFieldError('SocialLogin', 'typeSocial');
    }
  }

  @override
  SocialLogin rebuild(void Function(SocialLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialLoginBuilder toBuilder() => new SocialLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialLogin &&
        acessToken == other.acessToken &&
        typeSocial == other.typeSocial;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, acessToken.hashCode), typeSocial.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialLogin')
          ..add('acessToken', acessToken)
          ..add('typeSocial', typeSocial))
        .toString();
  }
}

class SocialLoginBuilder implements Builder<SocialLogin, SocialLoginBuilder> {
  _$SocialLogin _$v;

  String _acessToken;
  String get acessToken => _$this._acessToken;
  set acessToken(String acessToken) => _$this._acessToken = acessToken;

  String _typeSocial;
  String get typeSocial => _$this._typeSocial;
  set typeSocial(String typeSocial) => _$this._typeSocial = typeSocial;

  SocialLoginBuilder();

  SocialLoginBuilder get _$this {
    if (_$v != null) {
      _acessToken = _$v.acessToken;
      _typeSocial = _$v.typeSocial;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialLogin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SocialLogin;
  }

  @override
  void update(void Function(SocialLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialLogin build() {
    final _$result = _$v ??
        new _$SocialLogin._(acessToken: acessToken, typeSocial: typeSocial);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
