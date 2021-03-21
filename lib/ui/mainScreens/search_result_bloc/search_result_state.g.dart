// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_result_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchResultState extends SearchResultState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> allBooks;

  factory _$SearchResultState(
          [void Function(SearchResultStateBuilder) updates]) =>
      (new SearchResultStateBuilder()..update(updates)).build();

  _$SearchResultState._({this.isLoading, this.error, this.allBooks})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SearchResultState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SearchResultState', 'error');
    }
    if (allBooks == null) {
      throw new BuiltValueNullFieldError('SearchResultState', 'allBooks');
    }
  }

  @override
  SearchResultState rebuild(void Function(SearchResultStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultStateBuilder toBuilder() =>
      new SearchResultStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResultState &&
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
    return (newBuiltValueToStringHelper('SearchResultState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('allBooks', allBooks))
        .toString();
  }
}

class SearchResultStateBuilder
    implements Builder<SearchResultState, SearchResultStateBuilder> {
  _$SearchResultState _$v;

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

  SearchResultStateBuilder();

  SearchResultStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _allBooks = _$v.allBooks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResultState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchResultState;
  }

  @override
  void update(void Function(SearchResultStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchResultState build() {
    _$SearchResultState _$result;
    try {
      _$result = _$v ??
          new _$SearchResultState._(
              isLoading: isLoading, error: error, allBooks: allBooks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'allBooks';
        allBooks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchResultState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
