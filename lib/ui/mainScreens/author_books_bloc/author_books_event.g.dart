// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_books_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthorBooks extends GetAuthorBooks {
  @override
  final int id;

  factory _$GetAuthorBooks([void Function(GetAuthorBooksBuilder) updates]) =>
      (new GetAuthorBooksBuilder()..update(updates)).build();

  _$GetAuthorBooks._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GetAuthorBooks', 'id');
    }
  }

  @override
  GetAuthorBooks rebuild(void Function(GetAuthorBooksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorBooksBuilder toBuilder() =>
      new GetAuthorBooksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorBooks && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetAuthorBooks')..add('id', id))
        .toString();
  }
}

class GetAuthorBooksBuilder
    implements Builder<GetAuthorBooks, GetAuthorBooksBuilder> {
  _$GetAuthorBooks _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetAuthorBooksBuilder();

  GetAuthorBooksBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAuthorBooks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetAuthorBooks;
  }

  @override
  void update(void Function(GetAuthorBooksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAuthorBooks build() {
    final _$result = _$v ?? new _$GetAuthorBooks._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GetIsLogin extends GetIsLogin {
  factory _$GetIsLogin([void Function(GetIsLoginBuilder) updates]) =>
      (new GetIsLoginBuilder()..update(updates)).build();

  _$GetIsLogin._() : super._();

  @override
  GetIsLogin rebuild(void Function(GetIsLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIsLoginBuilder toBuilder() => new GetIsLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIsLogin;
  }

  @override
  int get hashCode {
    return 118379423;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetIsLogin').toString();
  }
}

class GetIsLoginBuilder implements Builder<GetIsLogin, GetIsLoginBuilder> {
  _$GetIsLogin _$v;

  GetIsLoginBuilder();

  @override
  void replace(GetIsLogin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetIsLogin;
  }

  @override
  void update(void Function(GetIsLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetIsLogin build() {
    final _$result = _$v ?? new _$GetIsLogin._();
    replace(_$result);
    return _$result;
  }
}

class _$ClearState extends ClearState {
  factory _$ClearState([void Function(ClearStateBuilder) updates]) =>
      (new ClearStateBuilder()..update(updates)).build();

  _$ClearState._() : super._();

  @override
  ClearState rebuild(void Function(ClearStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearStateBuilder toBuilder() => new ClearStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearState;
  }

  @override
  int get hashCode {
    return 338996177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearState').toString();
  }
}

class ClearStateBuilder implements Builder<ClearState, ClearStateBuilder> {
  _$ClearState _$v;

  ClearStateBuilder();

  @override
  void replace(ClearState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearState;
  }

  @override
  void update(void Function(ClearStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearState build() {
    final _$result = _$v ?? new _$ClearState._();
    replace(_$result);
    return _$result;
  }
}

class _$CleatFilter extends CleatFilter {
  factory _$CleatFilter([void Function(CleatFilterBuilder) updates]) =>
      (new CleatFilterBuilder()..update(updates)).build();

  _$CleatFilter._() : super._();

  @override
  CleatFilter rebuild(void Function(CleatFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CleatFilterBuilder toBuilder() => new CleatFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CleatFilter;
  }

  @override
  int get hashCode {
    return 770540275;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CleatFilter').toString();
  }
}

class CleatFilterBuilder implements Builder<CleatFilter, CleatFilterBuilder> {
  _$CleatFilter _$v;

  CleatFilterBuilder();

  @override
  void replace(CleatFilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CleatFilter;
  }

  @override
  void update(void Function(CleatFilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CleatFilter build() {
    final _$result = _$v ?? new _$CleatFilter._();
    replace(_$result);
    return _$result;
  }
}

class _$AddFilter extends AddFilter {
  @override
  final FilterData data;

  factory _$AddFilter([void Function(AddFilterBuilder) updates]) =>
      (new AddFilterBuilder()..update(updates)).build();

  _$AddFilter._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('AddFilter', 'data');
    }
  }

  @override
  AddFilter rebuild(void Function(AddFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddFilterBuilder toBuilder() => new AddFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddFilter && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddFilter')..add('data', data))
        .toString();
  }
}

class AddFilterBuilder implements Builder<AddFilter, AddFilterBuilder> {
  _$AddFilter _$v;

  FilterData _data;
  FilterData get data => _$this._data;
  set data(FilterData data) => _$this._data = data;

  AddFilterBuilder();

  AddFilterBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddFilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddFilter;
  }

  @override
  void update(void Function(AddFilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddFilter build() {
    final _$result = _$v ?? new _$AddFilter._(data: data);
    replace(_$result);
    return _$result;
  }
}

class _$AddSort extends AddSort {
  @override
  final int id;
  @override
  final String sortType;

  factory _$AddSort([void Function(AddSortBuilder) updates]) =>
      (new AddSortBuilder()..update(updates)).build();

  _$AddSort._({this.id, this.sortType}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AddSort', 'id');
    }
    if (sortType == null) {
      throw new BuiltValueNullFieldError('AddSort', 'sortType');
    }
  }

  @override
  AddSort rebuild(void Function(AddSortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddSortBuilder toBuilder() => new AddSortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddSort && id == other.id && sortType == other.sortType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), sortType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddSort')
          ..add('id', id)
          ..add('sortType', sortType))
        .toString();
  }
}

class AddSortBuilder implements Builder<AddSort, AddSortBuilder> {
  _$AddSort _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _sortType;
  String get sortType => _$this._sortType;
  set sortType(String sortType) => _$this._sortType = sortType;

  AddSortBuilder();

  AddSortBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _sortType = _$v.sortType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddSort other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddSort;
  }

  @override
  void update(void Function(AddSortBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddSort build() {
    final _$result = _$v ?? new _$AddSort._(id: id, sortType: sortType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
