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
  @override
  final bool isLogin;
  @override
  final String error;
  @override
  final ProfileModel profileUser;
  @override
  final BuiltList<ReviewQuoteUserModel> quoteUser;
  @override
  final BuiltList<ReviewQuoteUserModel> reviewUser;

  factory _$SettingState([void Function(SettingStateBuilder) updates]) =>
      (new SettingStateBuilder()..update(updates)).build();

  _$SettingState._(
      {this.isLoading,
      this.lang,
      this.isLogin,
      this.error,
      this.profileUser,
      this.quoteUser,
      this.reviewUser})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SettingState', 'isLoading');
    }
    if (lang == null) {
      throw new BuiltValueNullFieldError('SettingState', 'lang');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('SettingState', 'isLogin');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SettingState', 'error');
    }
    if (profileUser == null) {
      throw new BuiltValueNullFieldError('SettingState', 'profileUser');
    }
    if (quoteUser == null) {
      throw new BuiltValueNullFieldError('SettingState', 'quoteUser');
    }
    if (reviewUser == null) {
      throw new BuiltValueNullFieldError('SettingState', 'reviewUser');
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
        lang == other.lang &&
        isLogin == other.isLogin &&
        error == other.error &&
        profileUser == other.profileUser &&
        quoteUser == other.quoteUser &&
        reviewUser == other.reviewUser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, isLoading.hashCode), lang.hashCode),
                        isLogin.hashCode),
                    error.hashCode),
                profileUser.hashCode),
            quoteUser.hashCode),
        reviewUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingState')
          ..add('isLoading', isLoading)
          ..add('lang', lang)
          ..add('isLogin', isLogin)
          ..add('error', error)
          ..add('profileUser', profileUser)
          ..add('quoteUser', quoteUser)
          ..add('reviewUser', reviewUser))
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

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ProfileModelBuilder _profileUser;
  ProfileModelBuilder get profileUser =>
      _$this._profileUser ??= new ProfileModelBuilder();
  set profileUser(ProfileModelBuilder profileUser) =>
      _$this._profileUser = profileUser;

  ListBuilder<ReviewQuoteUserModel> _quoteUser;
  ListBuilder<ReviewQuoteUserModel> get quoteUser =>
      _$this._quoteUser ??= new ListBuilder<ReviewQuoteUserModel>();
  set quoteUser(ListBuilder<ReviewQuoteUserModel> quoteUser) =>
      _$this._quoteUser = quoteUser;

  ListBuilder<ReviewQuoteUserModel> _reviewUser;
  ListBuilder<ReviewQuoteUserModel> get reviewUser =>
      _$this._reviewUser ??= new ListBuilder<ReviewQuoteUserModel>();
  set reviewUser(ListBuilder<ReviewQuoteUserModel> reviewUser) =>
      _$this._reviewUser = reviewUser;

  SettingStateBuilder();

  SettingStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _lang = _$v.lang;
      _isLogin = _$v.isLogin;
      _error = _$v.error;
      _profileUser = _$v.profileUser?.toBuilder();
      _quoteUser = _$v.quoteUser?.toBuilder();
      _reviewUser = _$v.reviewUser?.toBuilder();
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
    _$SettingState _$result;
    try {
      _$result = _$v ??
          new _$SettingState._(
              isLoading: isLoading,
              lang: lang,
              isLogin: isLogin,
              error: error,
              profileUser: profileUser.build(),
              quoteUser: quoteUser.build(),
              reviewUser: reviewUser.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profileUser';
        profileUser.build();
        _$failedField = 'quoteUser';
        quoteUser.build();
        _$failedField = 'reviewUser';
        reviewUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SettingState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
