// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_books_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNextPage extends GetNextPage {
  factory _$GetNextPage([void Function(GetNextPageBuilder) updates]) =>
      (new GetNextPageBuilder()..update(updates)).build();

  _$GetNextPage._() : super._();

  @override
  GetNextPage rebuild(void Function(GetNextPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNextPageBuilder toBuilder() => new GetNextPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNextPage;
  }

  @override
  int get hashCode {
    return 437786924;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetNextPage').toString();
  }
}

class GetNextPageBuilder implements Builder<GetNextPage, GetNextPageBuilder> {
  _$GetNextPage _$v;

  GetNextPageBuilder();

  @override
  void replace(GetNextPage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetNextPage;
  }

  @override
  void update(void Function(GetNextPageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetNextPage build() {
    final _$result = _$v ?? new _$GetNextPage._();
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

class _$AddFilter extends AddFilter {
  @override
  final FilterData data;

  factory _$AddFilter([void Function(AddFilterBuilder) updates]) =>
      (new AddFilterBuilder()..update(updates)).build();

  _$AddFilter._({this.data}) : super._();

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

  _$AddSort._({this.sortType}) : super._();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
