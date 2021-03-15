// GENERATED CODE - DO NOT MODIFY BY HAND

part of book_by_category;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookByCategoryModel> _$bookByCategoryModelSerializer =
    new _$BookByCategoryModelSerializer();

class _$BookByCategoryModelSerializer
    implements StructuredSerializer<BookByCategoryModel> {
  @override
  final Iterable<Type> types = const [
    BookByCategoryModel,
    _$BookByCategoryModel
  ];
  @override
  final String wireName = 'BookByCategoryModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BookByCategoryModel object,
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
    if (object.books != null) {
      result
        ..add('books')
        ..add(serializers.serialize(object.books,
            specifiedType: const FullType(BaseBook)));
    }
    return result;
  }

  @override
  BookByCategoryModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookByCategoryModelBuilder();

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
        case 'books':
          result.books.replace(serializers.deserialize(value,
              specifiedType: const FullType(BaseBook)) as BaseBook);
          break;
      }
    }

    return result.build();
  }
}

class _$BookByCategoryModel extends BookByCategoryModel {
  @override
  final int id;
  @override
  final int books_count;
  @override
  final String image;
  @override
  final Translations translations;
  @override
  final BaseBook books;

  factory _$BookByCategoryModel(
          [void Function(BookByCategoryModelBuilder) updates]) =>
      (new BookByCategoryModelBuilder()..update(updates)).build();

  _$BookByCategoryModel._(
      {this.id, this.books_count, this.image, this.translations, this.books})
      : super._();

  @override
  BookByCategoryModel rebuild(
          void Function(BookByCategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookByCategoryModelBuilder toBuilder() =>
      new BookByCategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookByCategoryModel &&
        id == other.id &&
        books_count == other.books_count &&
        image == other.image &&
        translations == other.translations &&
        books == other.books;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), books_count.hashCode), image.hashCode),
            translations.hashCode),
        books.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookByCategoryModel')
          ..add('id', id)
          ..add('books_count', books_count)
          ..add('image', image)
          ..add('translations', translations)
          ..add('books', books))
        .toString();
  }
}

class BookByCategoryModelBuilder
    implements Builder<BookByCategoryModel, BookByCategoryModelBuilder> {
  _$BookByCategoryModel _$v;

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

  BaseBookBuilder _books;
  BaseBookBuilder get books => _$this._books ??= new BaseBookBuilder();
  set books(BaseBookBuilder books) => _$this._books = books;

  BookByCategoryModelBuilder();

  BookByCategoryModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _books_count = _$v.books_count;
      _image = _$v.image;
      _translations = _$v.translations?.toBuilder();
      _books = _$v.books?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookByCategoryModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BookByCategoryModel;
  }

  @override
  void update(void Function(BookByCategoryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BookByCategoryModel build() {
    _$BookByCategoryModel _$result;
    try {
      _$result = _$v ??
          new _$BookByCategoryModel._(
              id: id,
              books_count: books_count,
              image: image,
              translations: _translations?.build(),
              books: _books?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
        _$failedField = 'books';
        _books?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BookByCategoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
