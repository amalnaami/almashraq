// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorState extends AuthorState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Author> authors;
  @override
  final bool isLogin;

  factory _$AuthorState([void Function(AuthorStateBuilder) updates]) =>
      (new AuthorStateBuilder()..update(updates)).build();

  _$AuthorState._({this.isLoading, this.error, this.authors, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AuthorState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AuthorState', 'error');
    }
    if (authors == null) {
      throw new BuiltValueNullFieldError('AuthorState', 'authors');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AuthorState', 'isLogin');
    }
  }

  @override
  AuthorState rebuild(void Function(AuthorStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorStateBuilder toBuilder() => new AuthorStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorState &&
        isLoading == other.isLoading &&
        error == other.error &&
        authors == other.authors &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), authors.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('authors', authors)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class AuthorStateBuilder implements Builder<AuthorState, AuthorStateBuilder> {
  _$AuthorState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Author> _authors;
  ListBuilder<Author> get authors =>
      _$this._authors ??= new ListBuilder<Author>();
  set authors(ListBuilder<Author> authors) => _$this._authors = authors;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  AuthorStateBuilder();

  AuthorStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _authors = _$v.authors?.toBuilder();
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthorState;
  }

  @override
  void update(void Function(AuthorStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorState build() {
    _$AuthorState _$result;
    try {
      _$result = _$v ??
          new _$AuthorState._(
              isLoading: isLoading,
              error: error,
              authors: authors.build(),
              isLogin: isLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authors';
        authors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthorState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
