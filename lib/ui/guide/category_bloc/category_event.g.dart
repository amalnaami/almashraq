// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_event;

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

class _$InsertCategories extends InsertCategories {
  @override
  final List<int> selectedCategories;

  factory _$InsertCategories(
          [void Function(InsertCategoriesBuilder) updates]) =>
      (new InsertCategoriesBuilder()..update(updates)).build();

  _$InsertCategories._({this.selectedCategories}) : super._() {
    if (selectedCategories == null) {
      throw new BuiltValueNullFieldError(
          'InsertCategories', 'selectedCategories');
    }
  }

  @override
  InsertCategories rebuild(void Function(InsertCategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsertCategoriesBuilder toBuilder() =>
      new InsertCategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsertCategories &&
        selectedCategories == other.selectedCategories;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selectedCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InsertCategories')
          ..add('selectedCategories', selectedCategories))
        .toString();
  }
}

class InsertCategoriesBuilder
    implements Builder<InsertCategories, InsertCategoriesBuilder> {
  _$InsertCategories _$v;

  List<int> _selectedCategories;
  List<int> get selectedCategories => _$this._selectedCategories;
  set selectedCategories(List<int> selectedCategories) =>
      _$this._selectedCategories = selectedCategories;

  InsertCategoriesBuilder();

  InsertCategoriesBuilder get _$this {
    if (_$v != null) {
      _selectedCategories = _$v.selectedCategories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsertCategories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InsertCategories;
  }

  @override
  void update(void Function(InsertCategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InsertCategories build() {
    final _$result =
        _$v ?? new _$InsertCategories._(selectedCategories: selectedCategories);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
