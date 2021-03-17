// GENERATED CODE - DO NOT MODIFY BY HAND

part of link_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinkData> _$linkDataSerializer = new _$LinkDataSerializer();

class _$LinkDataSerializer implements StructuredSerializer<LinkData> {
  @override
  final Iterable<Type> types = const [LinkData, _$LinkData];
  @override
  final String wireName = 'LinkData';

  @override
  Iterable<Object> serialize(Serializers serializers, LinkData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.book_id != null) {
      result
        ..add('book_id')
        ..add(serializers.serialize(object.book_id,
            specifiedType: const FullType(String)));
    }
    if (object.link1 != null) {
      result
        ..add('link1')
        ..add(serializers.serialize(object.link1,
            specifiedType: const FullType(String)));
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
    return result;
  }

  @override
  LinkData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkDataBuilder();

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
        case 'book_id':
          result.book_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link1':
          result.link1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_en':
          result.name_en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LinkData extends LinkData {
  @override
  final int id;
  @override
  final String book_id;
  @override
  final String link1;
  @override
  final String name;
  @override
  final String name_en;

  factory _$LinkData([void Function(LinkDataBuilder) updates]) =>
      (new LinkDataBuilder()..update(updates)).build();

  _$LinkData._({this.id, this.book_id, this.link1, this.name, this.name_en})
      : super._();

  @override
  LinkData rebuild(void Function(LinkDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkDataBuilder toBuilder() => new LinkDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinkData &&
        id == other.id &&
        book_id == other.book_id &&
        link1 == other.link1 &&
        name == other.name &&
        name_en == other.name_en;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), book_id.hashCode), link1.hashCode),
            name.hashCode),
        name_en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LinkData')
          ..add('id', id)
          ..add('book_id', book_id)
          ..add('link1', link1)
          ..add('name', name)
          ..add('name_en', name_en))
        .toString();
  }
}

class LinkDataBuilder implements Builder<LinkData, LinkDataBuilder> {
  _$LinkData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _book_id;
  String get book_id => _$this._book_id;
  set book_id(String book_id) => _$this._book_id = book_id;

  String _link1;
  String get link1 => _$this._link1;
  set link1(String link1) => _$this._link1 = link1;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _name_en;
  String get name_en => _$this._name_en;
  set name_en(String name_en) => _$this._name_en = name_en;

  LinkDataBuilder();

  LinkDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _book_id = _$v.book_id;
      _link1 = _$v.link1;
      _name = _$v.name;
      _name_en = _$v.name_en;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinkData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LinkData;
  }

  @override
  void update(void Function(LinkDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LinkData build() {
    final _$result = _$v ??
        new _$LinkData._(
            id: id,
            book_id: book_id,
            link1: link1,
            name: name,
            name_en: name_en);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
