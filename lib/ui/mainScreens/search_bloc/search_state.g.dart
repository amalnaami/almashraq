// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchState extends SearchState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> allBooks;
  @override
  final BuiltList<Author> authors;
  @override
  final BuiltList<Category> categories;

  factory _$SearchState([void Function(SearchStateBuilder) updates]) =>
      (new SearchStateBuilder()..update(updates)).build();

  _$SearchState._(
      {this.isLoading,
      this.error,
      this.allBooks,
      this.authors,
      this.categories})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SearchState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SearchState', 'error');
    }
    if (allBooks == null) {
      throw new BuiltValueNullFieldError('SearchState', 'allBooks');
    }
    if (authors == null) {
      throw new BuiltValueNullFieldError('SearchState', 'authors');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('SearchState', 'categories');
    }
  }

  @override
  SearchState rebuild(void Function(SearchStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStateBuilder toBuilder() => new SearchStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchState &&
        isLoading == other.isLoading &&
        error == other.error &&
        allBooks == other.allBooks &&
        authors == other.authors &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                allBooks.hashCode),
            authors.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('allBooks', allBooks)
          ..add('authors', authors)
          ..add('categories', categories))
        .toString();
  }
}

class SearchStateBuilder implements Builder<SearchState, SearchStateBuilder> {
  _$SearchState _$v;

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

  ListBuilder<Author> _authors;
  ListBuilder<Author> get authors =>
      _$this._authors ??= new ListBuilder<Author>();
  set authors(ListBuilder<Author> authors) => _$this._authors = authors;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  SearchStateBuilder();

  SearchStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _allBooks = _$v.allBooks?.toBuilder();
      _authors = _$v.authors?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchState;
  }

  @override
  void update(void Function(SearchStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchState build() {
    _$SearchState _$result;
    try {
      _$result = _$v ??
          new _$SearchState._(
              isLoading: isLoading,
              error: error,
              allBooks: allBooks.build(),
              authors: authors.build(),
              categories: categories.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'allBooks';
        allBooks.build();
        _$failedField = 'authors';
        authors.build();
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
