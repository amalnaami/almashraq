// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryState extends CategoryState {
  @override
  final bool isLoading;
  @override
  final bool successAdding;
  @override
  final String error;
  @override
  final BuiltList<Category> categories;

  factory _$CategoryState([void Function(CategoryStateBuilder) updates]) =>
      (new CategoryStateBuilder()..update(updates)).build();

  _$CategoryState._(
      {this.isLoading, this.successAdding, this.error, this.categories})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('CategoryState', 'isLoading');
    }
    if (successAdding == null) {
      throw new BuiltValueNullFieldError('CategoryState', 'successAdding');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('CategoryState', 'error');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('CategoryState', 'categories');
    }
  }

  @override
  CategoryState rebuild(void Function(CategoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryStateBuilder toBuilder() => new CategoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryState &&
        isLoading == other.isLoading &&
        successAdding == other.successAdding &&
        error == other.error &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), successAdding.hashCode),
            error.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryState')
          ..add('isLoading', isLoading)
          ..add('successAdding', successAdding)
          ..add('error', error)
          ..add('categories', categories))
        .toString();
  }
}

class CategoryStateBuilder
    implements Builder<CategoryState, CategoryStateBuilder> {
  _$CategoryState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _successAdding;
  bool get successAdding => _$this._successAdding;
  set successAdding(bool successAdding) =>
      _$this._successAdding = successAdding;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Category> _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category> categories) =>
      _$this._categories = categories;

  CategoryStateBuilder();

  CategoryStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _successAdding = _$v.successAdding;
      _error = _$v.error;
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryState;
  }

  @override
  void update(void Function(CategoryStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryState build() {
    _$CategoryState _$result;
    try {
      _$result = _$v ??
          new _$CategoryState._(
              isLoading: isLoading,
              successAdding: successAdding,
              error: error,
              categories: categories.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
