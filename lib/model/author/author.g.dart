// GENERATED CODE - DO NOT MODIFY BY HAND

part of author;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Author> _$authorSerializer = new _$AuthorSerializer();

class _$AuthorSerializer implements StructuredSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author, _$Author];
  @override
  final String wireName = 'Author';

  @override
  Iterable<Object> serialize(Serializers serializers, Author object,
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
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(Translations)));
    }
    if (object.reviews_count != null) {
      result
        ..add('reviews_count')
        ..add(serializers.serialize(object.reviews_count,
            specifiedType: const FullType(String)));
    }
    if (object.quotation_count != null) {
      result
        ..add('quotation_count')
        ..add(serializers.serialize(object.quotation_count,
            specifiedType: const FullType(String)));
    }
    if (object.books_count != null) {
      result
        ..add('books_count')
        ..add(serializers.serialize(object.books_count,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Author deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorBuilder();

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
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
        case 'reviews_count':
          result.reviews_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quotation_count':
          result.quotation_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'books_count':
          result.books_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Author extends Author {
  @override
  final int id;
  @override
  final String image;
  @override
  final Translations translations;
  @override
  final String reviews_count;
  @override
  final String quotation_count;
  @override
  final int books_count;

  factory _$Author([void Function(AuthorBuilder) updates]) =>
      (new AuthorBuilder()..update(updates)).build();

  _$Author._(
      {this.id,
      this.image,
      this.translations,
      this.reviews_count,
      this.quotation_count,
      this.books_count})
      : super._();

  @override
  Author rebuild(void Function(AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
        id == other.id &&
        image == other.image &&
        translations == other.translations &&
        reviews_count == other.reviews_count &&
        quotation_count == other.quotation_count &&
        books_count == other.books_count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), image.hashCode),
                    translations.hashCode),
                reviews_count.hashCode),
            quotation_count.hashCode),
        books_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Author')
          ..add('id', id)
          ..add('image', image)
          ..add('translations', translations)
          ..add('reviews_count', reviews_count)
          ..add('quotation_count', quotation_count)
          ..add('books_count', books_count))
        .toString();
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  String _reviews_count;
  String get reviews_count => _$this._reviews_count;
  set reviews_count(String reviews_count) =>
      _$this._reviews_count = reviews_count;

  String _quotation_count;
  String get quotation_count => _$this._quotation_count;
  set quotation_count(String quotation_count) =>
      _$this._quotation_count = quotation_count;

  int _books_count;
  int get books_count => _$this._books_count;
  set books_count(int books_count) => _$this._books_count = books_count;

  AuthorBuilder();

  AuthorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image;
      _translations = _$v.translations?.toBuilder();
      _reviews_count = _$v.reviews_count;
      _quotation_count = _$v.quotation_count;
      _books_count = _$v.books_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Author build() {
    _$Author _$result;
    try {
      _$result = _$v ??
          new _$Author._(
              id: id,
              image: image,
              translations: _translations?.build(),
              reviews_count: reviews_count,
              quotation_count: quotation_count,
              books_count: books_count);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Author', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
