// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_books_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllBooksState extends AllBooksState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> allBooks;

  factory _$AllBooksState([void Function(AllBooksStateBuilder) updates]) =>
      (new AllBooksStateBuilder()..update(updates)).build();

  _$AllBooksState._({this.isLoading, this.error, this.allBooks}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AllBooksState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AllBooksState', 'error');
    }
    if (allBooks == null) {
      throw new BuiltValueNullFieldError('AllBooksState', 'allBooks');
    }
  }

  @override
  AllBooksState rebuild(void Function(AllBooksStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllBooksStateBuilder toBuilder() => new AllBooksStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllBooksState &&
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
    return (newBuiltValueToStringHelper('AllBooksState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('allBooks', allBooks))
        .toString();
  }
}

class AllBooksStateBuilder
    implements Builder<AllBooksState, AllBooksStateBuilder> {
  _$AllBooksState _$v;

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

  AllBooksStateBuilder();

  AllBooksStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _allBooks = _$v.allBooks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllBooksState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllBooksState;
  }

  @override
  void update(void Function(AllBooksStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllBooksState build() {
    _$AllBooksState _$result;
    try {
      _$result = _$v ??
          new _$AllBooksState._(
              isLoading: isLoading, error: error, allBooks: allBooks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'allBooks';
        allBooks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllBooksState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
