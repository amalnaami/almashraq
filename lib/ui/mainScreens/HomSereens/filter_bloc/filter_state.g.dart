// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterState extends FilterState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool isLogin;
  @override
  final bool success;
  @override
  final BuiltList<Author> authors;
  @override
  final BuiltList<Category> categories;

  factory _$FilterState([void Function(FilterStateBuilder) updates]) =>
      (new FilterStateBuilder()..update(updates)).build();

  _$FilterState._(
      {this.isLoading,
      this.error,
      this.isLogin,
      this.success,
      this.authors,
      this.categories})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('FilterState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('FilterState', 'error');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('FilterState', 'isLogin');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('FilterState', 'success');
    }
    if (authors == null) {
      throw new BuiltValueNullFieldError('FilterState', 'authors');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('FilterState', 'categories');
    }
  }

  @override
  FilterState rebuild(void Function(FilterStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterStateBuilder toBuilder() => new FilterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterState &&
        isLoading == other.isLoading &&
        error == other.error &&
        isLogin == other.isLogin &&
        success == other.success &&
        authors == other.authors &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                    isLogin.hashCode),
                success.hashCode),
            authors.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('isLogin', isLogin)
          ..add('success', success)
          ..add('authors', authors)
          ..add('categories', categories))
        .toString();
  }
}

class FilterStateBuilder implements Builder<FilterState, FilterStateBuilder> {
  _$FilterState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  ListBuilder<Author> _authors;
  ListBuilder<Author> get authors =>
      _$this._authors ??= new ListBuilder<Author>();
  set authors(ListBuilder<Author> authors) => _$this._authors = authors;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  FilterStateBuilder();

  FilterStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _isLogin = _$v.isLogin;
      _success = _$v.success;
      _authors = _$v.authors?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FilterState;
  }

  @override
  void update(void Function(FilterStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterState build() {
    _$FilterState _$result;
    try {
      _$result = _$v ??
          new _$FilterState._(
              isLoading: isLoading,
              error: error,
              isLogin: isLogin,
              success: success,
              authors: authors.build(),
              categories: categories.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authors';
        authors.build();
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FilterState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
