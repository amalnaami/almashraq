// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthorData> _$authorDataSerializer = new _$AuthorDataSerializer();

class _$AuthorDataSerializer implements StructuredSerializer<AuthorData> {
  @override
  final Iterable<Type> types = const [AuthorData, _$AuthorData];
  @override
  final String wireName = 'AuthorData';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthorData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.quotation_count != null) {
      result
        ..add('quotation_count')
        ..add(serializers.serialize(object.quotation_count,
            specifiedType: const FullType(String)));
    }
    if (object.reviews_count != null) {
      result
        ..add('reviews_count')
        ..add(serializers.serialize(object.reviews_count,
            specifiedType: const FullType(String)));
    }
    if (object.books_count != null) {
      result
        ..add('books_count')
        ..add(serializers.serialize(object.books_count,
            specifiedType: const FullType(int)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(AuthorTranslation)));
    }
    return result;
  }

  @override
  AuthorData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorDataBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quotation_count':
          result.quotation_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviews_count':
          result.reviews_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'books_count':
          result.books_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AuthorTranslation))
              as AuthorTranslation);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthorData extends AuthorData {
  @override
  final int id;
  @override
  final String image;
  @override
  final String quotation_count;
  @override
  final String reviews_count;
  @override
  final int books_count;
  @override
  final AuthorTranslation translations;

  factory _$AuthorData([void Function(AuthorDataBuilder) updates]) =>
      (new AuthorDataBuilder()..update(updates)).build();

  _$AuthorData._(
      {this.id,
      this.image,
      this.quotation_count,
      this.reviews_count,
      this.books_count,
      this.translations})
      : super._();

  @override
  AuthorData rebuild(void Function(AuthorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorDataBuilder toBuilder() => new AuthorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorData &&
        id == other.id &&
        image == other.image &&
        quotation_count == other.quotation_count &&
        reviews_count == other.reviews_count &&
        books_count == other.books_count &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), image.hashCode),
                    quotation_count.hashCode),
                reviews_count.hashCode),
            books_count.hashCode),
        translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorData')
          ..add('id', id)
          ..add('image', image)
          ..add('quotation_count', quotation_count)
          ..add('reviews_count', reviews_count)
          ..add('books_count', books_count)
          ..add('translations', translations))
        .toString();
  }
}

class AuthorDataBuilder implements Builder<AuthorData, AuthorDataBuilder> {
  _$AuthorData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _quotation_count;
  String get quotation_count => _$this._quotation_count;
  set quotation_count(String quotation_count) =>
      _$this._quotation_count = quotation_count;

  String _reviews_count;
  String get reviews_count => _$this._reviews_count;
  set reviews_count(String reviews_count) =>
      _$this._reviews_count = reviews_count;

  int _books_count;
  int get books_count => _$this._books_count;
  set books_count(int books_count) => _$this._books_count = books_count;

  AuthorTranslationBuilder _translations;
  AuthorTranslationBuilder get translations =>
      _$this._translations ??= new AuthorTranslationBuilder();
  set translations(AuthorTranslationBuilder translations) =>
      _$this._translations = translations;

  AuthorDataBuilder();

  AuthorDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image;
      _quotation_count = _$v.quotation_count;
      _reviews_count = _$v.reviews_count;
      _books_count = _$v.books_count;
      _translations = _$v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthorData;
  }

  @override
  void update(void Function(AuthorDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorData build() {
    _$AuthorData _$result;
    try {
      _$result = _$v ??
          new _$AuthorData._(
              id: id,
              image: image,
              quotation_count: quotation_count,
              reviews_count: reviews_count,
              books_count: books_count,
              translations: _translations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthorData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
