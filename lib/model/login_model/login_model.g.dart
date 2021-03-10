// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginModel> _$loginModelSerializer = new _$LoginModelSerializer();

class _$LoginModelSerializer implements StructuredSerializer<LoginModel> {
  @override
  final Iterable<Type> types = const [LoginModel, _$LoginModel];
  @override
  final String wireName = 'LoginModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.access_token != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.access_token,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  LoginModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginModel extends LoginModel {
  @override
  final String access_token;
  @override
  final User user;

  factory _$LoginModel([void Function(LoginModelBuilder) updates]) =>
      (new LoginModelBuilder()..update(updates)).build();

  _$LoginModel._({this.access_token, this.user}) : super._();

  @override
  LoginModel rebuild(void Function(LoginModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginModelBuilder toBuilder() => new LoginModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginModel &&
        access_token == other.access_token &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, access_token.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginModel')
          ..add('access_token', access_token)
          ..add('user', user))
        .toString();
  }
}

class LoginModelBuilder implements Builder<LoginModel, LoginModelBuilder> {
  _$LoginModel _$v;

  String _access_token;
  String get access_token => _$this._access_token;
  set access_token(String access_token) => _$this._access_token = access_token;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  LoginModelBuilder();

  LoginModelBuilder get _$this {
    if (_$v != null) {
      _access_token = _$v.access_token;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginModel;
  }

  @override
  void update(void Function(LoginModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginModel build() {
    _$LoginModel _$result;
    try {
      _$result = _$v ??
          new _$LoginModel._(access_token: access_token, user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
