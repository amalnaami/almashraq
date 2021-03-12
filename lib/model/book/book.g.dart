// GENERATED CODE - DO NOT MODIFY BY HAND

part of book;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Book> _$bookSerializer = new _$BookSerializer();

class _$BookSerializer implements StructuredSerializer<Book> {
  @override
  final Iterable<Type> types = const [Book, _$Book];
  @override
  final String wireName = 'Book';

  @override
  Iterable<Object> serialize(Serializers serializers, Book object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section,
            specifiedType: const FullType(Category)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(Author)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.book_type != null) {
      result
        ..add('book_type')
        ..add(serializers.serialize(object.book_type,
            specifiedType: const FullType(String)));
    }
    if (object.reviews_count != null) {
      result
        ..add('reviews_count')
        ..add(serializers.serialize(object.reviews_count,
            specifiedType: const FullType(String)));
    }
    if (object.rate != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(object.rate,
            specifiedType: const FullType(int)));
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
  Book deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookBuilder();

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
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category)) as Category);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author)) as Author);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book_type':
          result.book_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviews_count':
          result.reviews_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$Book extends Book {
  @override
  final int id;
  @override
  final Category section;
  @override
  final Author author;
  @override
  final String image;
  @override
  final String book_type;
  @override
  final String reviews_count;
  @override
  final int rate;
  @override
  final Translations translations;

  factory _$Book([void Function(BookBuilder) updates]) =>
      (new BookBuilder()..update(updates)).build();

  _$Book._(
      {this.id,
      this.section,
      this.author,
      this.image,
      this.book_type,
      this.reviews_count,
      this.rate,
      this.translations})
      : super._();

  @override
  Book rebuild(void Function(BookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookBuilder toBuilder() => new BookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Book &&
        id == other.id &&
        section == other.section &&
        author == other.author &&
        image == other.image &&
        book_type == other.book_type &&
        reviews_count == other.reviews_count &&
        rate == other.rate &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), section.hashCode),
                            author.hashCode),
                        image.hashCode),
                    book_type.hashCode),
                reviews_count.hashCode),
            rate.hashCode),
        translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Book')
          ..add('id', id)
          ..add('section', section)
          ..add('author', author)
          ..add('image', image)
          ..add('book_type', book_type)
          ..add('reviews_count', reviews_count)
          ..add('rate', rate)
          ..add('translations', translations))
        .toString();
  }
}

class BookBuilder implements Builder<Book, BookBuilder> {
  _$Book _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  CategoryBuilder _section;
  CategoryBuilder get section => _$this._section ??= new CategoryBuilder();
  set section(CategoryBuilder section) => _$this._section = section;

  AuthorBuilder _author;
  AuthorBuilder get author => _$this._author ??= new AuthorBuilder();
  set author(AuthorBuilder author) => _$this._author = author;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _book_type;
  String get book_type => _$this._book_type;
  set book_type(String book_type) => _$this._book_type = book_type;

  String _reviews_count;
  String get reviews_count => _$this._reviews_count;
  set reviews_count(String reviews_count) =>
      _$this._reviews_count = reviews_count;

  int _rate;
  int get rate => _$this._rate;
  set rate(int rate) => _$this._rate = rate;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  BookBuilder();

  BookBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _section = _$v.section?.toBuilder();
      _author = _$v.author?.toBuilder();
      _image = _$v.image;
      _book_type = _$v.book_type;
      _reviews_count = _$v.reviews_count;
      _rate = _$v.rate;
      _translations = _$v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Book other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Book;
  }

  @override
  void update(void Function(BookBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Book build() {
    _$Book _$result;
    try {
      _$result = _$v ??
          new _$Book._(
              id: id,
              section: _section?.build(),
              author: _author?.build(),
              image: image,
              book_type: book_type,
              reviews_count: reviews_count,
              rate: rate,
              translations: _translations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'section';
        _section?.build();
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Book', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
