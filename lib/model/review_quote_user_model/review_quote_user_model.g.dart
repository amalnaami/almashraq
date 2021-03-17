// GENERATED CODE - DO NOT MODIFY BY HAND

part of review_quote_user_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewQuoteUserModel> _$reviewQuoteUserModelSerializer =
    new _$ReviewQuoteUserModelSerializer();

class _$ReviewQuoteUserModelSerializer
    implements StructuredSerializer<ReviewQuoteUserModel> {
  @override
  final Iterable<Type> types = const [
    ReviewQuoteUserModel,
    _$ReviewQuoteUserModel
  ];
  @override
  final String wireName = 'ReviewQuoteUserModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReviewQuoteUserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.quotation_text != null) {
      result
        ..add('quotation_text')
        ..add(serializers.serialize(object.quotation_text,
            specifiedType: const FullType(String)));
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
    if (object.user_name != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(object.user_name,
            specifiedType: const FullType(String)));
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
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.book != null) {
      result
        ..add('book')
        ..add(serializers.serialize(object.book,
            specifiedType: const FullType(Book)));
    }
    return result;
  }

  @override
  ReviewQuoteUserModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewQuoteUserModelBuilder();

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
        case 'quotation_text':
          result.quotation_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_text':
          result.review_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
        case 'user_name':
          result.user_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_image':
          result.user_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book':
          result.book.replace(serializers.deserialize(value,
              specifiedType: const FullType(Book)) as Book);
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewQuoteUserModel extends ReviewQuoteUserModel {
  @override
  final int id;
  @override
  final String quotation_text;
  @override
  final String review_text;
  @override
  final Translations translations;
  @override
  final String user_name;
  @override
  final String user_image;
  @override
  final String rating;
  @override
  final String date;
  @override
  final Book book;

  factory _$ReviewQuoteUserModel(
          [void Function(ReviewQuoteUserModelBuilder) updates]) =>
      (new ReviewQuoteUserModelBuilder()..update(updates)).build();

  _$ReviewQuoteUserModel._(
      {this.id,
      this.quotation_text,
      this.review_text,
      this.translations,
      this.user_name,
      this.user_image,
      this.rating,
      this.date,
      this.book})
      : super._();

  @override
  ReviewQuoteUserModel rebuild(
          void Function(ReviewQuoteUserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewQuoteUserModelBuilder toBuilder() =>
      new ReviewQuoteUserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewQuoteUserModel &&
        id == other.id &&
        quotation_text == other.quotation_text &&
        review_text == other.review_text &&
        translations == other.translations &&
        user_name == other.user_name &&
        user_image == other.user_image &&
        rating == other.rating &&
        date == other.date &&
        book == other.book;
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
                                $jc($jc(0, id.hashCode),
                                    quotation_text.hashCode),
                                review_text.hashCode),
                            translations.hashCode),
                        user_name.hashCode),
                    user_image.hashCode),
                rating.hashCode),
            date.hashCode),
        book.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewQuoteUserModel')
          ..add('id', id)
          ..add('quotation_text', quotation_text)
          ..add('review_text', review_text)
          ..add('translations', translations)
          ..add('user_name', user_name)
          ..add('user_image', user_image)
          ..add('rating', rating)
          ..add('date', date)
          ..add('book', book))
        .toString();
  }
}

class ReviewQuoteUserModelBuilder
    implements Builder<ReviewQuoteUserModel, ReviewQuoteUserModelBuilder> {
  _$ReviewQuoteUserModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _quotation_text;
  String get quotation_text => _$this._quotation_text;
  set quotation_text(String quotation_text) =>
      _$this._quotation_text = quotation_text;

  String _review_text;
  String get review_text => _$this._review_text;
  set review_text(String review_text) => _$this._review_text = review_text;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  String _user_name;
  String get user_name => _$this._user_name;
  set user_name(String user_name) => _$this._user_name = user_name;

  String _user_image;
  String get user_image => _$this._user_image;
  set user_image(String user_image) => _$this._user_image = user_image;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  BookBuilder _book;
  BookBuilder get book => _$this._book ??= new BookBuilder();
  set book(BookBuilder book) => _$this._book = book;

  ReviewQuoteUserModelBuilder();

  ReviewQuoteUserModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _quotation_text = _$v.quotation_text;
      _review_text = _$v.review_text;
      _translations = _$v.translations?.toBuilder();
      _user_name = _$v.user_name;
      _user_image = _$v.user_image;
      _rating = _$v.rating;
      _date = _$v.date;
      _book = _$v.book?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewQuoteUserModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewQuoteUserModel;
  }

  @override
  void update(void Function(ReviewQuoteUserModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewQuoteUserModel build() {
    _$ReviewQuoteUserModel _$result;
    try {
      _$result = _$v ??
          new _$ReviewQuoteUserModel._(
              id: id,
              quotation_text: quotation_text,
              review_text: review_text,
              translations: _translations?.build(),
              user_name: user_name,
              user_image: user_image,
              rating: rating,
              date: date,
              book: _book?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();

        _$failedField = 'book';
        _book?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReviewQuoteUserModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
