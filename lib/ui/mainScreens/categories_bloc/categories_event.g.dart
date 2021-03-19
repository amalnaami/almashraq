// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCategories extends GetCategories {
  factory _$GetCategories([void Function(GetCategoriesBuilder) updates]) =>
      (new GetCategoriesBuilder()..update(updates)).build();

  _$GetCategories._() : super._();

  @override
  GetCategories rebuild(void Function(GetCategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCategoriesBuilder toBuilder() => new GetCategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCategories;
  }

  @override
  int get hashCode {
    return 892333180;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCategories').toString();
  }
}

class GetCategoriesBuilder
    implements Builder<GetCategories, GetCategoriesBuilder> {
  _$GetCategories _$v;

  GetCategoriesBuilder();

  @override
  void replace(GetCategories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCategories;
  }

  @override
  void update(void Function(GetCategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCategories build() {
    final _$result = _$v ?? new _$GetCategories._();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
