// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_screen_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MainScreenState extends MainScreenState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool success;
  @override
  final BuiltList<BooksDetails> books;

  factory _$MainScreenState([void Function(MainScreenStateBuilder) updates]) =>
      (new MainScreenStateBuilder()..update(updates)).build();

  _$MainScreenState._({this.isLoading, this.error, this.success, this.books})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('MainScreenState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('MainScreenState', 'error');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('MainScreenState', 'success');
    }
    if (books == null) {
      throw new BuiltValueNullFieldError('MainScreenState', 'books');
    }
  }

  @override
  MainScreenState rebuild(void Function(MainScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainScreenStateBuilder toBuilder() =>
      new MainScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainScreenState &&
        isLoading == other.isLoading &&
        error == other.error &&
        success == other.success &&
        books == other.books;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), success.hashCode),
        books.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainScreenState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('success', success)
          ..add('books', books))
        .toString();
  }
}

class MainScreenStateBuilder
    implements Builder<MainScreenState, MainScreenStateBuilder> {
  _$MainScreenState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  ListBuilder<BooksDetails> _books;
  ListBuilder<BooksDetails> get books =>
      _$this._books ??= new ListBuilder<BooksDetails>();
  set books(ListBuilder<BooksDetails> books) => _$this._books = books;

  MainScreenStateBuilder();

  MainScreenStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _success = _$v.success;
      _books = _$v.books?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainScreenState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MainScreenState;
  }

  @override
  void update(void Function(MainScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MainScreenState build() {
    _$MainScreenState _$result;
    try {
      _$result = _$v ??
          new _$MainScreenState._(
              isLoading: isLoading,
              error: error,
              success: success,
              books: books.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'books';
        books.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MainScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
