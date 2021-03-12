// GENERATED CODE - DO NOT MODIFY BY HAND

part of sign_up_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpState extends SignUpState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool success;
  @override
  final BuiltList<CountryModel> country;
  @override
  final bool successSignup;
  @override
  final UserModel user;

  factory _$SignUpState([void Function(SignUpStateBuilder) updates]) =>
      (new SignUpStateBuilder()..update(updates)).build();

  _$SignUpState._(
      {this.isLoading,
      this.error,
      this.success,
      this.country,
      this.successSignup,
      this.user})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'error');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'success');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'country');
    }
    if (successSignup == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'successSignup');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('SignUpState', 'user');
    }
  }

  @override
  SignUpState rebuild(void Function(SignUpStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpStateBuilder toBuilder() => new SignUpStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpState &&
        isLoading == other.isLoading &&
        error == other.error &&
        success == other.success &&
        country == other.country &&
        successSignup == other.successSignup &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                    success.hashCode),
                country.hashCode),
            successSignup.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('success', success)
          ..add('country', country)
          ..add('successSignup', successSignup)
          ..add('user', user))
        .toString();
  }
}

class SignUpStateBuilder implements Builder<SignUpState, SignUpStateBuilder> {
  _$SignUpState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  ListBuilder<CountryModel> _country;
  ListBuilder<CountryModel> get country =>
      _$this._country ??= new ListBuilder<CountryModel>();
  set country(ListBuilder<CountryModel> country) => _$this._country = country;

  bool _successSignup;
  bool get successSignup => _$this._successSignup;
  set successSignup(bool successSignup) =>
      _$this._successSignup = successSignup;

  UserModelBuilder _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder user) => _$this._user = user;

  SignUpStateBuilder();

  SignUpStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _success = _$v.success;
      _country = _$v.country?.toBuilder();
      _successSignup = _$v.successSignup;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUpState;
  }

  @override
  void update(void Function(SignUpStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpState build() {
    _$SignUpState _$result;
    try {
      _$result = _$v ??
          new _$SignUpState._(
              isLoading: isLoading,
              error: error,
              success: success,
              country: country.build(),
              successSignup: successSignup,
              user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'country';
        country.build();

        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignUpState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
