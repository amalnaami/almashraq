// GENERATED CODE - DO NOT MODIFY BY HAND

part of books_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksDetails> _$booksDetailsSerializer =
    new _$BooksDetailsSerializer();

class _$BooksDetailsSerializer implements StructuredSerializer<BooksDetails> {
  @override
  final Iterable<Type> types = const [BooksDetails, _$BooksDetails];
  @override
  final String wireName = 'BooksDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, BooksDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.pages_count != null) {
      result
        ..add('pages_count')
        ..add(serializers.serialize(object.pages_count,
            specifiedType: const FullType(String)));
    }
    if (object.publish_year != null) {
      result
        ..add('publish_year')
        ..add(serializers.serialize(object.publish_year,
            specifiedType: const FullType(String)));
    }
    if (object.rate != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(object.rate,
            specifiedType: const FullType(int)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(String)));
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
    if (object.isbn != null) {
      result
        ..add('isbn')
        ..add(serializers.serialize(object.isbn,
            specifiedType: const FullType(String)));
    }
    if (object.quotations_count != null) {
      result
        ..add('quotations_count')
        ..add(serializers.serialize(object.quotations_count,
            specifiedType: const FullType(String)));
    }
    if (object.reviews_count != null) {
      result
        ..add('reviews_count')
        ..add(serializers.serialize(object.reviews_count,
            specifiedType: const FullType(String)));
    }
    if (object.keywords != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(object.keywords,
            specifiedType: const FullType(String)));
    }
    if (object.sub_title != null) {
      result
        ..add('sub_title')
        ..add(serializers.serialize(object.sub_title,
            specifiedType: const FullType(String)));
    }
    if (object.editor != null) {
      result
        ..add('editor')
        ..add(serializers.serialize(object.editor,
            specifiedType: const FullType(String)));
    }
    if (object.painter != null) {
      result
        ..add('painter')
        ..add(serializers.serialize(object.painter,
            specifiedType: const FullType(String)));
    }
    if (object.created_at != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.created_at,
            specifiedType: const FullType(String)));
    }
    if (object.updated_at != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updated_at,
            specifiedType: const FullType(String)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(BooksTranslation)));
    }
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section,
            specifiedType: const FullType(SectionData)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(AuthorData)));
    }
    return result;
  }

  @override
  BooksDetails deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksDetailsBuilder();

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
        case 'pages_count':
          result.pages_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publish_year':
          result.publish_year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book_type':
          result.book_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isbn':
          result.isbn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quotations_count':
          result.quotations_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviews_count':
          result.reviews_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'keywords':
          result.keywords = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub_title':
          result.sub_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'editor':
          result.editor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'painter':
          result.painter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BooksTranslation))
              as BooksTranslation);
          break;
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(SectionData)) as SectionData);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthorData)) as AuthorData);
          break;
      }
    }

    return result.build();
  }
}

class _$BooksDetails extends BooksDetails {
  @override
  final int id;
  @override
  final String pages_count;
  @override
  final String publish_year;
  @override
  final int rate;
  @override
  final String size;
  @override
  final String image;
  @override
  final String book_type;
  @override
  final String isbn;
  @override
  final String quotations_count;
  @override
  final String reviews_count;
  @override
  final String keywords;
  @override
  final String sub_title;
  @override
  final String editor;
  @override
  final String painter;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final BooksTranslation translations;
  @override
  final SectionData section;
  @override
  final AuthorData author;

  factory _$BooksDetails([void Function(BooksDetailsBuilder) updates]) =>
      (new BooksDetailsBuilder()..update(updates)).build();

  _$BooksDetails._(
      {this.id,
      this.pages_count,
      this.publish_year,
      this.rate,
      this.size,
      this.image,
      this.book_type,
      this.isbn,
      this.quotations_count,
      this.reviews_count,
      this.keywords,
      this.sub_title,
      this.editor,
      this.painter,
      this.created_at,
      this.updated_at,
      this.translations,
      this.section,
      this.author})
      : super._();

  @override
  BooksDetails rebuild(void Function(BooksDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksDetailsBuilder toBuilder() => new BooksDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksDetails &&
        id == other.id &&
        pages_count == other.pages_count &&
        publish_year == other.publish_year &&
        rate == other.rate &&
        size == other.size &&
        image == other.image &&
        book_type == other.book_type &&
        isbn == other.isbn &&
        quotations_count == other.quotations_count &&
        reviews_count == other.reviews_count &&
        keywords == other.keywords &&
        sub_title == other.sub_title &&
        editor == other.editor &&
        painter == other.painter &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        translations == other.translations &&
        section == other.section &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(0,
                                                                                id.hashCode),
                                                                            pages_count.hashCode),
                                                                        publish_year.hashCode),
                                                                    rate.hashCode),
                                                                size.hashCode),
                                                            image.hashCode),
                                                        book_type.hashCode),
                                                    isbn.hashCode),
                                                quotations_count.hashCode),
                                            reviews_count.hashCode),
                                        keywords.hashCode),
                                    sub_title.hashCode),
                                editor.hashCode),
                            painter.hashCode),
                        created_at.hashCode),
                    updated_at.hashCode),
                translations.hashCode),
            section.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooksDetails')
          ..add('id', id)
          ..add('pages_count', pages_count)
          ..add('publish_year', publish_year)
          ..add('rate', rate)
          ..add('size', size)
          ..add('image', image)
          ..add('book_type', book_type)
          ..add('isbn', isbn)
          ..add('quotations_count', quotations_count)
          ..add('reviews_count', reviews_count)
          ..add('keywords', keywords)
          ..add('sub_title', sub_title)
          ..add('editor', editor)
          ..add('painter', painter)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('translations', translations)
          ..add('section', section)
          ..add('author', author))
        .toString();
  }
}

class BooksDetailsBuilder
    implements Builder<BooksDetails, BooksDetailsBuilder> {
  _$BooksDetails _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _pages_count;
  String get pages_count => _$this._pages_count;
  set pages_count(String pages_count) => _$this._pages_count = pages_count;

  String _publish_year;
  String get publish_year => _$this._publish_year;
  set publish_year(String publish_year) => _$this._publish_year = publish_year;

  int _rate;
  int get rate => _$this._rate;
  set rate(int rate) => _$this._rate = rate;

  String _size;
  String get size => _$this._size;
  set size(String size) => _$this._size = size;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _book_type;
  String get book_type => _$this._book_type;
  set book_type(String book_type) => _$this._book_type = book_type;

  String _isbn;
  String get isbn => _$this._isbn;
  set isbn(String isbn) => _$this._isbn = isbn;

  String _quotations_count;
  String get quotations_count => _$this._quotations_count;
  set quotations_count(String quotations_count) =>
      _$this._quotations_count = quotations_count;

  String _reviews_count;
  String get reviews_count => _$this._reviews_count;
  set reviews_count(String reviews_count) =>
      _$this._reviews_count = reviews_count;

  String _keywords;
  String get keywords => _$this._keywords;
  set keywords(String keywords) => _$this._keywords = keywords;

  String _sub_title;
  String get sub_title => _$this._sub_title;
  set sub_title(String sub_title) => _$this._sub_title = sub_title;

  String _editor;
  String get editor => _$this._editor;
  set editor(String editor) => _$this._editor = editor;

  String _painter;
  String get painter => _$this._painter;
  set painter(String painter) => _$this._painter = painter;

  String _created_at;
  String get created_at => _$this._created_at;
  set created_at(String created_at) => _$this._created_at = created_at;

  String _updated_at;
  String get updated_at => _$this._updated_at;
  set updated_at(String updated_at) => _$this._updated_at = updated_at;

  BooksTranslationBuilder _translations;
  BooksTranslationBuilder get translations =>
      _$this._translations ??= new BooksTranslationBuilder();
  set translations(BooksTranslationBuilder translations) =>
      _$this._translations = translations;

  SectionDataBuilder _section;
  SectionDataBuilder get section =>
      _$this._section ??= new SectionDataBuilder();
  set section(SectionDataBuilder section) => _$this._section = section;

  AuthorDataBuilder _author;
  AuthorDataBuilder get author => _$this._author ??= new AuthorDataBuilder();
  set author(AuthorDataBuilder author) => _$this._author = author;

  BooksDetailsBuilder();

  BooksDetailsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _pages_count = _$v.pages_count;
      _publish_year = _$v.publish_year;
      _rate = _$v.rate;
      _size = _$v.size;
      _image = _$v.image;
      _book_type = _$v.book_type;
      _isbn = _$v.isbn;
      _quotations_count = _$v.quotations_count;
      _reviews_count = _$v.reviews_count;
      _keywords = _$v.keywords;
      _sub_title = _$v.sub_title;
      _editor = _$v.editor;
      _painter = _$v.painter;
      _created_at = _$v.created_at;
      _updated_at = _$v.updated_at;
      _translations = _$v.translations?.toBuilder();
      _section = _$v.section?.toBuilder();
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BooksDetails;
  }

  @override
  void update(void Function(BooksDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooksDetails build() {
    _$BooksDetails _$result;
    try {
      _$result = _$v ??
          new _$BooksDetails._(
              id: id,
              pages_count: pages_count,
              publish_year: publish_year,
              rate: rate,
              size: size,
              image: image,
              book_type: book_type,
              isbn: isbn,
              quotations_count: quotations_count,
              reviews_count: reviews_count,
              keywords: keywords,
              sub_title: sub_title,
              editor: editor,
              painter: painter,
              created_at: created_at,
              updated_at: updated_at,
              translations: _translations?.build(),
              section: _section?.build(),
              author: _author?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
        _$failedField = 'section';
        _section?.build();
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BooksDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
