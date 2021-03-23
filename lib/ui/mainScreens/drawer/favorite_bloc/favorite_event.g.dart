// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavorites extends GetFavorites {
  factory _$GetFavorites([void Function(GetFavoritesBuilder) updates]) =>
      (new GetFavoritesBuilder()..update(updates)).build();

  _$GetFavorites._() : super._();

  @override
  GetFavorites rebuild(void Function(GetFavoritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavoritesBuilder toBuilder() => new GetFavoritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavorites;
  }

  @override
  int get hashCode {
    return 353947312;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetFavorites').toString();
  }
}

class GetFavoritesBuilder
    implements Builder<GetFavorites, GetFavoritesBuilder> {
  _$GetFavorites _$v;

  GetFavoritesBuilder();

  @override
  void replace(GetFavorites other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFavorites;
  }

  @override
  void update(void Function(GetFavoritesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavorites build() {
    final _$result = _$v ?? new _$GetFavorites._();
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

class _$RemoveFavorite extends RemoveFavorite {
  @override
  final int id;

  factory _$RemoveFavorite([void Function(RemoveFavoriteBuilder) updates]) =>
      (new RemoveFavoriteBuilder()..update(updates)).build();

  _$RemoveFavorite._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RemoveFavorite', 'id');
    }
  }

  @override
  RemoveFavorite rebuild(void Function(RemoveFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFavoriteBuilder toBuilder() =>
      new RemoveFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFavorite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFavorite')..add('id', id))
        .toString();
  }
}

class RemoveFavoriteBuilder
    implements Builder<RemoveFavorite, RemoveFavoriteBuilder> {
  _$RemoveFavorite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveFavoriteBuilder();

  RemoveFavoriteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveFavorite;
  }

  @override
  void update(void Function(RemoveFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFavorite build() {
    final _$result = _$v ?? new _$RemoveFavorite._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
