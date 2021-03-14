// GENERATED CODE - DO NOT MODIFY BY HAND

part of books_by_category_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNextPage extends GetNextPage {
  @override
  final int categoryId;

  factory _$GetNextPage([void Function(GetNextPageBuilder) updates]) =>
      (new GetNextPageBuilder()..update(updates)).build();

  _$GetNextPage._({this.categoryId}) : super._() {
    if (categoryId == null) {
      throw new BuiltValueNullFieldError('GetNextPage', 'categoryId');
    }
  }

  @override
  GetNextPage rebuild(void Function(GetNextPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNextPageBuilder toBuilder() => new GetNextPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNextPage && categoryId == other.categoryId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, categoryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetNextPage')
          ..add('categoryId', categoryId))
        .toString();
  }
}

class GetNextPageBuilder implements Builder<GetNextPage, GetNextPageBuilder> {
  _$GetNextPage _$v;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  GetNextPageBuilder();

  GetNextPageBuilder get _$this {
    if (_$v != null) {
      _categoryId = _$v.categoryId;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ?? new _$GetNextPage._(categoryId: categoryId);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
