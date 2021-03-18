// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavoriteState extends FavoriteState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Book> books;

  factory _$FavoriteState([void Function(FavoriteStateBuilder) updates]) =>
      (new FavoriteStateBuilder()..update(updates)).build();

  _$FavoriteState._({this.isLoading, this.error, this.books}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('FavoriteState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('FavoriteState', 'error');
    }
    if (books == null) {
      throw new BuiltValueNullFieldError('FavoriteState', 'books');
    }
  }

  @override
  FavoriteState rebuild(void Function(FavoriteStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteStateBuilder toBuilder() => new FavoriteStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteState &&
        isLoading == other.isLoading &&
        error == other.error &&
        books == other.books;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), books.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('books', books))
        .toString();
  }
}

class FavoriteStateBuilder
    implements Builder<FavoriteState, FavoriteStateBuilder> {
  _$FavoriteState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Book> _books;
  ListBuilder<Book> get books => _$this._books ??= new ListBuilder<Book>();
  set books(ListBuilder<Book> books) => _$this._books = books;

  FavoriteStateBuilder();

  FavoriteStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _books = _$v.books?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoriteState;
  }

  @override
  void update(void Function(FavoriteStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteState build() {
    _$FavoriteState _$result;
    try {
      _$result = _$v ??
          new _$FavoriteState._(
              isLoading: isLoading, error: error, books: books.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'books';
        books.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoriteState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
