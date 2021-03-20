// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_drawer_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomDrawerState extends CustomDrawerState {
  @override
  final bool isLoading;
  @override
  final bool isLogin;
  @override
  final bool logout;
  @override
  final String error;
  @override
  final String image;
  @override
  final String name;
  @override
  final String country;
  @override
  final String email;

  factory _$CustomDrawerState(
          [void Function(CustomDrawerStateBuilder) updates]) =>
      (new CustomDrawerStateBuilder()..update(updates)).build();

  _$CustomDrawerState._(
      {this.isLoading,
      this.isLogin,
      this.logout,
      this.error,
      this.image,
      this.name,
      this.country,
      this.email})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'isLoading');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'isLogin');
    }
    if (logout == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'logout');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'error');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'image');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'name');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'country');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('CustomDrawerState', 'email');
    }
  }

  @override
  CustomDrawerState rebuild(void Function(CustomDrawerStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomDrawerStateBuilder toBuilder() =>
      new CustomDrawerStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomDrawerState &&
        isLoading == other.isLoading &&
        isLogin == other.isLogin &&
        logout == other.logout &&
        error == other.error &&
        image == other.image &&
        name == other.name &&
        country == other.country &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, isLoading.hashCode), isLogin.hashCode),
                            logout.hashCode),
                        error.hashCode),
                    image.hashCode),
                name.hashCode),
            country.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomDrawerState')
          ..add('isLoading', isLoading)
          ..add('isLogin', isLogin)
          ..add('logout', logout)
          ..add('error', error)
          ..add('image', image)
          ..add('name', name)
          ..add('country', country)
          ..add('email', email))
        .toString();
  }
}

class CustomDrawerStateBuilder
    implements Builder<CustomDrawerState, CustomDrawerStateBuilder> {
  _$CustomDrawerState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  bool _logout;
  bool get logout => _$this._logout;
  set logout(bool logout) => _$this._logout = logout;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  CustomDrawerStateBuilder();

  CustomDrawerStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _isLogin = _$v.isLogin;
      _logout = _$v.logout;
      _error = _$v.error;
      _image = _$v.image;
      _name = _$v.name;
      _country = _$v.country;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomDrawerState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomDrawerState;
  }

  @override
  void update(void Function(CustomDrawerStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomDrawerState build() {
    final _$result = _$v ??
        new _$CustomDrawerState._(
            isLoading: isLoading,
            isLogin: isLogin,
            logout: logout,
            error: error,
            image: image,
            name: name,
            country: country,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
