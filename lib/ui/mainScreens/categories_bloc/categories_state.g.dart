// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoriesState extends CategoriesState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Category> categories;
  @override
  final bool isLogin;

  factory _$CategoriesState([void Function(CategoriesStateBuilder) updates]) =>
      (new CategoriesStateBuilder()..update(updates)).build();

  _$CategoriesState._(
      {this.isLoading, this.error, this.categories, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('CategoriesState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('CategoriesState', 'error');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('CategoriesState', 'categories');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('CategoriesState', 'isLogin');
    }
  }

  @override
  CategoriesState rebuild(void Function(CategoriesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesStateBuilder toBuilder() =>
      new CategoriesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesState &&
        isLoading == other.isLoading &&
        error == other.error &&
        categories == other.categories &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
            categories.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('categories', categories)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class CategoriesStateBuilder
    implements Builder<CategoriesState, CategoriesStateBuilder> {
  _$CategoriesState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  CategoriesStateBuilder();

  CategoriesStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _categories = _$v.categories?.toBuilder();
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesState;
  }

  @override
  void update(void Function(CategoriesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesState build() {
    _$CategoriesState _$result;
    try {
      _$result = _$v ??
          new _$CategoriesState._(
              isLoading: isLoading,
              error: error,
              categories: categories.build(),
              isLogin: isLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoriesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
