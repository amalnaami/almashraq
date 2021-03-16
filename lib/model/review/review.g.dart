// GENERATED CODE - DO NOT MODIFY BY HAND

part of review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.review_text != null) {
      result
        ..add('review_text')
        ..add(serializers.serialize(object.review_text,
            specifiedType: const FullType(String)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(Translations)));
    }
    if (object.user_image != null) {
      result
        ..add('user_image')
        ..add(serializers.serialize(object.user_image,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(String)));
    }
    if (object.user_name != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(object.user_name,
            specifiedType: const FullType(String)));
    }
    if (object.book != null) {
      result
        ..add('book')
        ..add(serializers.serialize(object.book,
            specifiedType: const FullType(Book)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

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
        case 'review_text':
          result.review_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
        case 'user_image':
          result.user_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_name':
          result.user_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book':
          result.book.replace(serializers.deserialize(value,
              specifiedType: const FullType(Book)) as Book);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final int id;
  @override
  final String review_text;
  @override
  final Translations translations;
  @override
  final String user_image;
  @override
  final String rating;
  @override
  final String user_name;
  @override
  final Book book;
  @override
  final String date;

  factory _$Review([void Function(ReviewBuilder) updates]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._(
      {this.id,
      this.review_text,
      this.translations,
      this.user_image,
      this.rating,
      this.user_name,
      this.book,
      this.date})
      : super._();

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        id == other.id &&
        review_text == other.review_text &&
        translations == other.translations &&
        user_image == other.user_image &&
        rating == other.rating &&
        user_name == other.user_name &&
        book == other.book &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), review_text.hashCode),
                            translations.hashCode),
                        user_image.hashCode),
                    rating.hashCode),
                user_name.hashCode),
            book.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('id', id)
          ..add('review_text', review_text)
          ..add('translations', translations)
          ..add('user_image', user_image)
          ..add('rating', rating)
          ..add('user_name', user_name)
          ..add('book', book)
          ..add('date', date))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _review_text;
  String get review_text => _$this._review_text;
  set review_text(String review_text) => _$this._review_text = review_text;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  String _user_image;
  String get user_image => _$this._user_image;
  set user_image(String user_image) => _$this._user_image = user_image;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _user_name;
  String get user_name => _$this._user_name;
  set user_name(String user_name) => _$this._user_name = user_name;

  BookBuilder _book;
  BookBuilder get book => _$this._book ??= new BookBuilder();
  set book(BookBuilder book) => _$this._book = book;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ReviewBuilder();

  ReviewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _review_text = _$v.review_text;
      _translations = _$v.translations?.toBuilder();
      _user_image = _$v.user_image;
      _rating = _$v.rating;
      _user_name = _$v.user_name;
      _book = _$v.book?.toBuilder();
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          new _$Review._(
              id: id,
              review_text: review_text,
              translations: _translations?.build(),
              user_image: user_image,
              rating: rating,
              user_name: user_name,
              book: _book?.build(),
              date: date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();

        _$failedField = 'book';
        _book?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
