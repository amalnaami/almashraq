// GENERATED CODE - DO NOT MODIFY BY HAND

part of books_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksData> _$booksDataSerializer = new _$BooksDataSerializer();

class _$BooksDataSerializer implements StructuredSerializer<BooksData> {
  @override
  final Iterable<Type> types = const [BooksData, _$BooksData];
  @override
  final String wireName = 'BooksData';

  @override
  Iterable<Object> serialize(Serializers serializers, BooksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.publish != null) {
      result
        ..add('publish')
        ..add(serializers.serialize(object.publish,
            specifiedType: const FullType(String)));
    }
    if (object.sub_name != null) {
      result
        ..add('sub_name')
        ..add(serializers.serialize(object.sub_name,
            specifiedType: const FullType(String)));
    }
    if (object.translator != null) {
      result
        ..add('translator')
        ..add(serializers.serialize(object.translator,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BooksData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publish':
          result.publish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub_name':
          result.sub_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translator':
          result.translator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BooksData extends BooksData {
  @override
  final String name;
  @override
  final String description;
  @override
  final String publish;
  @override
  final String sub_name;
  @override
  final String translator;

  factory _$BooksData([void Function(BooksDataBuilder) updates]) =>
      (new BooksDataBuilder()..update(updates)).build();

  _$BooksData._(
      {this.name,
      this.description,
      this.publish,
      this.sub_name,
      this.translator})
      : super._();

  @override
  BooksData rebuild(void Function(BooksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksDataBuilder toBuilder() => new BooksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksData &&
        name == other.name &&
        description == other.description &&
        publish == other.publish &&
        sub_name == other.sub_name &&
        translator == other.translator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), description.hashCode),
                publish.hashCode),
            sub_name.hashCode),
        translator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooksData')
          ..add('name', name)
          ..add('description', description)
          ..add('publish', publish)
          ..add('sub_name', sub_name)
          ..add('translator', translator))
        .toString();
  }
}

class BooksDataBuilder implements Builder<BooksData, BooksDataBuilder> {
  _$BooksData _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _publish;
  String get publish => _$this._publish;
  set publish(String publish) => _$this._publish = publish;

  String _sub_name;
  String get sub_name => _$this._sub_name;
  set sub_name(String sub_name) => _$this._sub_name = sub_name;

  String _translator;
  String get translator => _$this._translator;
  set translator(String translator) => _$this._translator = translator;

  BooksDataBuilder();

  BooksDataBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _publish = _$v.publish;
      _sub_name = _$v.sub_name;
      _translator = _$v.translator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BooksData;
  }

  @override
  void update(void Function(BooksDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooksData build() {
    final _$result = _$v ??
        new _$BooksData._(
            name: name,
            description: description,
            publish: publish,
            sub_name: sub_name,
            translator: translator);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
