// GENERATED CODE - DO NOT MODIFY BY HAND

part of book_screen_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavorite extends GetFavorite {
  @override
  final int id;

  factory _$GetFavorite([void Function(GetFavoriteBuilder) updates]) =>
      (new GetFavoriteBuilder()..update(updates)).build();

  _$GetFavorite._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GetFavorite', 'id');
    }
  }

  @override
  GetFavorite rebuild(void Function(GetFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavoriteBuilder toBuilder() => new GetFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavorite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFavorite')..add('id', id))
        .toString();
  }
}

class GetFavoriteBuilder implements Builder<GetFavorite, GetFavoriteBuilder> {
  _$GetFavorite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetFavoriteBuilder();

  GetFavoriteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFavorite;
  }

  @override
  void update(void Function(GetFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavorite build() {
    final _$result = _$v ?? new _$GetFavorite._(id: id);
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

class _$ModifyFavorite extends ModifyFavorite {
  @override
  final bool isFavorite;
  @override
  final int id;

  factory _$ModifyFavorite([void Function(ModifyFavoriteBuilder) updates]) =>
      (new ModifyFavoriteBuilder()..update(updates)).build();

  _$ModifyFavorite._({this.isFavorite, this.id}) : super._() {
    if (isFavorite == null) {
      throw new BuiltValueNullFieldError('ModifyFavorite', 'isFavorite');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('ModifyFavorite', 'id');
    }
  }

  @override
  ModifyFavorite rebuild(void Function(ModifyFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyFavoriteBuilder toBuilder() =>
      new ModifyFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyFavorite &&
        isFavorite == other.isFavorite &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isFavorite.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModifyFavorite')
          ..add('isFavorite', isFavorite)
          ..add('id', id))
        .toString();
  }
}

class ModifyFavoriteBuilder
    implements Builder<ModifyFavorite, ModifyFavoriteBuilder> {
  _$ModifyFavorite _$v;

  bool _isFavorite;
  bool get isFavorite => _$this._isFavorite;
  set isFavorite(bool isFavorite) => _$this._isFavorite = isFavorite;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ModifyFavoriteBuilder();

  ModifyFavoriteBuilder get _$this {
    if (_$v != null) {
      _isFavorite = _$v.isFavorite;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ModifyFavorite;
  }

  @override
  void update(void Function(ModifyFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModifyFavorite build() {
    final _$result =
        _$v ?? new _$ModifyFavorite._(isFavorite: isFavorite, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
