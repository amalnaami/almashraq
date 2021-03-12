// GENERATED CODE - DO NOT MODIFY BY HAND

part of section_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SectionData> _$sectionDataSerializer = new _$SectionDataSerializer();

class _$SectionDataSerializer implements StructuredSerializer<SectionData> {
  @override
  final Iterable<Type> types = const [SectionData, _$SectionData];
  @override
  final String wireName = 'SectionData';

  @override
  Iterable<Object> serialize(Serializers serializers, SectionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.books_count != null) {
      result
        ..add('books_count')
        ..add(serializers.serialize(object.books_count,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(Translations)));
    }
    return result;
  }

  @override
  SectionData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionDataBuilder();

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
        case 'books_count':
          result.books_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
      }
    }

    return result.build();
  }
}

class _$SectionData extends SectionData {
  @override
  final int id;
  @override
  final int books_count;
  @override
  final String image;
  @override
  final Translations translations;

  factory _$SectionData([void Function(SectionDataBuilder) updates]) =>
      (new SectionDataBuilder()..update(updates)).build();

  _$SectionData._({this.id, this.books_count, this.image, this.translations})
      : super._();

  @override
  SectionData rebuild(void Function(SectionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionDataBuilder toBuilder() => new SectionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionData &&
        id == other.id &&
        books_count == other.books_count &&
        image == other.image &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), books_count.hashCode), image.hashCode),
        translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SectionData')
          ..add('id', id)
          ..add('books_count', books_count)
          ..add('image', image)
          ..add('translations', translations))
        .toString();
  }
}

class SectionDataBuilder implements Builder<SectionData, SectionDataBuilder> {
  _$SectionData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _books_count;
  int get books_count => _$this._books_count;
  set books_count(int books_count) => _$this._books_count = books_count;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  SectionDataBuilder();

  SectionDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _books_count = _$v.books_count;
      _image = _$v.image;
      _translations = _$v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SectionData;
  }

  @override
  void update(void Function(SectionDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SectionData build() {
    _$SectionData _$result;
    try {
      _$result = _$v ??
          new _$SectionData._(
              id: id,
              books_count: books_count,
              image: image,
              translations: _translations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SectionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
