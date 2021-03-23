// GENERATED CODE - DO NOT MODIFY BY HAND

part of subscribe_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPackages extends GetPackages {
  factory _$GetPackages([void Function(GetPackagesBuilder) updates]) =>
      (new GetPackagesBuilder()..update(updates)).build();

  _$GetPackages._() : super._();

  @override
  GetPackages rebuild(void Function(GetPackagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPackagesBuilder toBuilder() => new GetPackagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPackages;
  }

  @override
  int get hashCode {
    return 961940460;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetPackages').toString();
  }
}

class GetPackagesBuilder implements Builder<GetPackages, GetPackagesBuilder> {
  _$GetPackages _$v;

  GetPackagesBuilder();

  @override
  void replace(GetPackages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetPackages;
  }

  @override
  void update(void Function(GetPackagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetPackages build() {
    final _$result = _$v ?? new _$GetPackages._();
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ClearSuccess extends ClearSuccess {
  factory _$ClearSuccess([void Function(ClearSuccessBuilder) updates]) =>
      (new ClearSuccessBuilder()..update(updates)).build();

  _$ClearSuccess._() : super._();

  @override
  ClearSuccess rebuild(void Function(ClearSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearSuccessBuilder toBuilder() => new ClearSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearSuccess;
  }

  @override
  int get hashCode {
    return 74631534;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearSuccess').toString();
  }
}

class ClearSuccessBuilder
    implements Builder<ClearSuccess, ClearSuccessBuilder> {
  _$ClearSuccess _$v;

  ClearSuccessBuilder();

  @override
  void replace(ClearSuccess other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearSuccess;
  }

  @override
  void update(void Function(ClearSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearSuccess build() {
    final _$result = _$v ?? new _$ClearSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$Subscribe extends Subscribe {
  @override
  final String id;
  @override
  final String type;

  factory _$Subscribe([void Function(SubscribeBuilder) updates]) =>
      (new SubscribeBuilder()..update(updates)).build();

  _$Subscribe._({this.id, this.type}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Subscribe', 'id');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Subscribe', 'type');
    }
  }

  @override
  Subscribe rebuild(void Function(SubscribeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscribeBuilder toBuilder() => new SubscribeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscribe && id == other.id && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Subscribe')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class SubscribeBuilder implements Builder<Subscribe, SubscribeBuilder> {
  _$Subscribe _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  SubscribeBuilder();

  SubscribeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subscribe other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Subscribe;
  }

  @override
  void update(void Function(SubscribeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Subscribe build() {
    final _$result = _$v ?? new _$Subscribe._(id: id, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
