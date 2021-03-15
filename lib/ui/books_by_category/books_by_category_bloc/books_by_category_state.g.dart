// GENERATED CODE - DO NOT MODIFY BY HAND

part of books_by_category_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BooksByCategoryState extends BooksByCategoryState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> allBooks;

  factory _$BooksByCategoryState(
          [void Function(BooksByCategoryStateBuilder) updates]) =>
      (new BooksByCategoryStateBuilder()..update(updates)).build();

  _$BooksByCategoryState._({this.isLoading, this.error, this.allBooks})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('BooksByCategoryState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('BooksByCategoryState', 'error');
    }
    if (allBooks == null) {
      throw new BuiltValueNullFieldError('BooksByCategoryState', 'allBooks');
    }
  }

  @override
  BooksByCategoryState rebuild(
          void Function(BooksByCategoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksByCategoryStateBuilder toBuilder() =>
      new BooksByCategoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksByCategoryState &&
        isLoading == other.isLoading &&
        error == other.error &&
        allBooks == other.allBooks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), error.hashCode), allBooks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooksByCategoryState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('allBooks', allBooks))
        .toString();
  }
}

class BooksByCategoryStateBuilder
    implements Builder<BooksByCategoryState, BooksByCategoryStateBuilder> {
  _$BooksByCategoryState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Book> _allBooks;
  ListBuilder<Book> get allBooks =>
      _$this._allBooks ??= new ListBuilder<Book>();
  set allBooks(ListBuilder<Book> allBooks) => _$this._allBooks = allBooks;

  BooksByCategoryStateBuilder();

  BooksByCategoryStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _allBooks = _$v.allBooks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksByCategoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BooksByCategoryState;
  }

  @override
  void update(void Function(BooksByCategoryStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooksByCategoryState build() {
    _$BooksByCategoryState _$result;
    try {
      _$result = _$v ??
          new _$BooksByCategoryState._(
              isLoading: isLoading, error: error, allBooks: allBooks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'allBooks';
        allBooks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BooksByCategoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
