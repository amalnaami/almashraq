// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_books_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorBooksState extends AuthorBooksState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> books;
  @override
  final bool isLogin;

  factory _$AuthorBooksState(
          [void Function(AuthorBooksStateBuilder) updates]) =>
      (new AuthorBooksStateBuilder()..update(updates)).build();

  _$AuthorBooksState._({this.isLoading, this.error, this.books, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AuthorBooksState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AuthorBooksState', 'error');
    }
    if (books == null) {
      throw new BuiltValueNullFieldError('AuthorBooksState', 'books');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AuthorBooksState', 'isLogin');
    }
  }

  @override
  AuthorBooksState rebuild(void Function(AuthorBooksStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBooksStateBuilder toBuilder() =>
      new AuthorBooksStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorBooksState &&
        isLoading == other.isLoading &&
        error == other.error &&
        books == other.books &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), books.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorBooksState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('books', books)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class AuthorBooksStateBuilder
    implements Builder<AuthorBooksState, AuthorBooksStateBuilder> {
  _$AuthorBooksState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Book> _books;
  ListBuilder<Book> get books => _$this._books ??= new ListBuilder<Book>();
  set books(ListBuilder<Book> books) => _$this._books = books;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  AuthorBooksStateBuilder();

  AuthorBooksStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _books = _$v.books?.toBuilder();
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorBooksState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthorBooksState;
  }

  @override
  void update(void Function(AuthorBooksStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorBooksState build() {
    _$AuthorBooksState _$result;
    try {
      _$result = _$v ??
          new _$AuthorBooksState._(
              isLoading: isLoading,
              error: error,
              books: books.build(),
              isLogin: isLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'books';
        books.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthorBooksState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
