// GENERATED CODE - DO NOT MODIFY BY HAND

part of book_screen_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookScreenState extends BookScreenState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool isFavorite;
  @override
  final bool isLogin;

  factory _$BookScreenState([void Function(BookScreenStateBuilder) updates]) =>
      (new BookScreenStateBuilder()..update(updates)).build();

  _$BookScreenState._(
      {this.isLoading, this.error, this.isFavorite, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('BookScreenState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('BookScreenState', 'error');
    }
    if (isFavorite == null) {
      throw new BuiltValueNullFieldError('BookScreenState', 'isFavorite');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('BookScreenState', 'isLogin');
    }
  }

  @override
  BookScreenState rebuild(void Function(BookScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookScreenStateBuilder toBuilder() =>
      new BookScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookScreenState &&
        isLoading == other.isLoading &&
        error == other.error &&
        isFavorite == other.isFavorite &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
            isFavorite.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookScreenState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('isFavorite', isFavorite)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class BookScreenStateBuilder
    implements Builder<BookScreenState, BookScreenStateBuilder> {
  _$BookScreenState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isFavorite;
  bool get isFavorite => _$this._isFavorite;
  set isFavorite(bool isFavorite) => _$this._isFavorite = isFavorite;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  BookScreenStateBuilder();

  BookScreenStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _isFavorite = _$v.isFavorite;
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BookScreenState;
  }

  @override
  void update(void Function(BookScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BookScreenState build() {
    final _$result = _$v ??
        new _$BookScreenState._(
            isLoading: isLoading,
            error: error,
            isFavorite: isFavorite,
            isLogin: isLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
