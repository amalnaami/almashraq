// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthors extends GetAuthors {
  factory _$GetAuthors([void Function(GetAuthorsBuilder) updates]) =>
      (new GetAuthorsBuilder()..update(updates)).build();

  _$GetAuthors._() : super._();

  @override
  GetAuthors rebuild(void Function(GetAuthorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorsBuilder toBuilder() => new GetAuthorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthors;
  }

  @override
  int get hashCode {
    return 1060995131;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetAuthors').toString();
  }
}

class GetAuthorsBuilder implements Builder<GetAuthors, GetAuthorsBuilder> {
  _$GetAuthors _$v;

  GetAuthorsBuilder();

  @override
  void replace(GetAuthors other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetAuthors;
  }

  @override
  void update(void Function(GetAuthorsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAuthors build() {
    final _$result = _$v ?? new _$GetAuthors._();
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
  final String sortType;

  factory _$AddSort([void Function(AddSortBuilder) updates]) =>
      (new AddSortBuilder()..update(updates)).build();

  _$AddSort._({this.sortType}) : super._() {
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
    return other is AddSort && sortType == other.sortType;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sortType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddSort')..add('sortType', sortType))
        .toString();
  }
}

class AddSortBuilder implements Builder<AddSort, AddSortBuilder> {
  _$AddSort _$v;

  String _sortType;
  String get sortType => _$this._sortType;
  set sortType(String sortType) => _$this._sortType = sortType;

  AddSortBuilder();

  AddSortBuilder get _$this {
    if (_$v != null) {
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
    final _$result = _$v ?? new _$AddSort._(sortType: sortType);
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

class _$ClearFilter extends ClearFilter {
  factory _$ClearFilter([void Function(ClearFilterBuilder) updates]) =>
      (new ClearFilterBuilder()..update(updates)).build();

  _$ClearFilter._() : super._();

  @override
  ClearFilter rebuild(void Function(ClearFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearFilterBuilder toBuilder() => new ClearFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearFilter;
  }

  @override
  int get hashCode {
    return 356428798;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearFilter').toString();
  }
}

class ClearFilterBuilder implements Builder<ClearFilter, ClearFilterBuilder> {
  _$ClearFilter _$v;

  ClearFilterBuilder();

  @override
  void replace(ClearFilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearFilter;
  }

  @override
  void update(void Function(ClearFilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearFilter build() {
    final _$result = _$v ?? new _$ClearFilter._();
    replace(_$result);
    return _$result;
  }
}

class _$Clear extends Clear {
  factory _$Clear([void Function(ClearBuilder) updates]) =>
      (new ClearBuilder()..update(updates)).build();

  _$Clear._() : super._();

  @override
  Clear rebuild(void Function(ClearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearBuilder toBuilder() => new ClearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clear;
  }

  @override
  int get hashCode {
    return 102524199;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Clear').toString();
  }
}

class ClearBuilder implements Builder<Clear, ClearBuilder> {
  _$Clear _$v;

  ClearBuilder();

  @override
  void replace(Clear other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Clear;
  }

  @override
  void update(void Function(ClearBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Clear build() {
    final _$result = _$v ?? new _$Clear._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
