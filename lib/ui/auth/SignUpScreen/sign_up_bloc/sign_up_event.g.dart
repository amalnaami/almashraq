// GENERATED CODE - DO NOT MODIFY BY HAND

part of sign_up_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCountry extends GetCountry {
  factory _$GetCountry([void Function(GetCountryBuilder) updates]) =>
      (new GetCountryBuilder()..update(updates)).build();

  _$GetCountry._() : super._();

  @override
  GetCountry rebuild(void Function(GetCountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCountryBuilder toBuilder() => new GetCountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCountry;
  }

  @override
  int get hashCode {
    return 858342468;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCountry').toString();
  }
}

class GetCountryBuilder implements Builder<GetCountry, GetCountryBuilder> {
  _$GetCountry _$v;

  GetCountryBuilder();

  @override
  void replace(GetCountry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCountry;
  }

  @override
  void update(void Function(GetCountryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCountry build() {
    final _$result = _$v ?? new _$GetCountry._();
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

class _$SignUp extends SignUp {
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final String tele;
  @override
  final String gender;
  @override
  final String country_code;
  @override
  final File image;

  factory _$SignUp([void Function(SignUpBuilder) updates]) =>
      (new SignUpBuilder()..update(updates)).build();

  _$SignUp._(
      {this.name,
      this.username,
      this.email,
      this.password,
      this.tele,
      this.gender,
      this.country_code,
      this.image})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('SignUp', 'name');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('SignUp', 'username');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('SignUp', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('SignUp', 'password');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('SignUp', 'gender');
    }
    if (country_code == null) {
      throw new BuiltValueNullFieldError('SignUp', 'country_code');
    }
  }

  @override
  SignUp rebuild(void Function(SignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpBuilder toBuilder() => new SignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUp &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        tele == other.tele &&
        gender == other.gender &&
        country_code == other.country_code &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), username.hashCode),
                            email.hashCode),
                        password.hashCode),
                    tele.hashCode),
                gender.hashCode),
            country_code.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUp')
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('tele', tele)
          ..add('gender', gender)
          ..add('country_code', country_code)
          ..add('image', image))
        .toString();
  }
}

class SignUpBuilder implements Builder<SignUp, SignUpBuilder> {
  _$SignUp _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _tele;
  String get tele => _$this._tele;
  set tele(String tele) => _$this._tele = tele;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _country_code;
  String get country_code => _$this._country_code;
  set country_code(String country_code) => _$this._country_code = country_code;

  File _image;
  File get image => _$this._image;
  set image(File image) => _$this._image = image;

  SignUpBuilder();

  SignUpBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _username = _$v.username;
      _email = _$v.email;
      _password = _$v.password;
      _tele = _$v.tele;
      _gender = _$v.gender;
      _country_code = _$v.country_code;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUp;
  }

  @override
  void update(void Function(SignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUp build() {
    final _$result = _$v ??
        new _$SignUp._(
            name: name,
            username: username,
            email: email,
            password: password,
            tele: tele,
            gender: gender,
            country_code: country_code,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
