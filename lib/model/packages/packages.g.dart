// GENERATED CODE - DO NOT MODIFY BY HAND

part of packages;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Packages> _$packagesSerializer = new _$PackagesSerializer();

class _$PackagesSerializer implements StructuredSerializer<Packages> {
  @override
  final Iterable<Type> types = const [Packages, _$Packages];
  @override
  final String wireName = 'Packages';

  @override
  Iterable<Object> serialize(Serializers serializers, Packages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.name_en != null) {
      result
        ..add('name_en')
        ..add(serializers.serialize(object.name_en,
            specifiedType: const FullType(String)));
    }
    if (object.duration_days != null) {
      result
        ..add('duration_days')
        ..add(serializers.serialize(object.duration_days,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Packages deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_en':
          result.name_en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration_days':
          result.duration_days = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Packages extends Packages {
  @override
  final int id;
  @override
  final String name;
  @override
  final String name_en;
  @override
  final String duration_days;
  @override
  final String price;

  factory _$Packages([void Function(PackagesBuilder) updates]) =>
      (new PackagesBuilder()..update(updates)).build();

  _$Packages._(
      {this.id, this.name, this.name_en, this.duration_days, this.price})
      : super._();

  @override
  Packages rebuild(void Function(PackagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackagesBuilder toBuilder() => new PackagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Packages &&
        id == other.id &&
        name == other.name &&
        name_en == other.name_en &&
        duration_days == other.duration_days &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), name_en.hashCode),
            duration_days.hashCode),
        price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Packages')
          ..add('id', id)
          ..add('name', name)
          ..add('name_en', name_en)
          ..add('duration_days', duration_days)
          ..add('price', price))
        .toString();
  }
}

class PackagesBuilder implements Builder<Packages, PackagesBuilder> {
  _$Packages _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _name_en;
  String get name_en => _$this._name_en;
  set name_en(String name_en) => _$this._name_en = name_en;

  String _duration_days;
  String get duration_days => _$this._duration_days;
  set duration_days(String duration_days) =>
      _$this._duration_days = duration_days;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  PackagesBuilder();

  PackagesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _name_en = _$v.name_en;
      _duration_days = _$v.duration_days;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Packages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Packages;
  }

  @override
  void update(void Function(PackagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Packages build() {
    final _$result = _$v ??
        new _$Packages._(
            id: id,
            name: name,
            name_en: name_en,
            duration_days: duration_days,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
