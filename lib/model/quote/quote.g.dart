// GENERATED CODE - DO NOT MODIFY BY HAND

part of quote;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Quote> _$quoteSerializer = new _$QuoteSerializer();

class _$QuoteSerializer implements StructuredSerializer<Quote> {
  @override
  final Iterable<Type> types = const [Quote, _$Quote];
  @override
  final String wireName = 'Quote';

  @override
  Iterable<Object> serialize(Serializers serializers, Quote object,
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
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(Translations)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Quote deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuoteBuilder();

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
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
              specifiedType: const FullType(Translations)) as Translations);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Quote extends Quote {
  @override
  final int id;
  @override
  final String quotation_text;
  @override
  final Translations translations;
  @override
  final String image;

  factory _$Quote([void Function(QuoteBuilder) updates]) =>
      (new QuoteBuilder()..update(updates)).build();

  _$Quote._({this.id, this.quotation_text, this.translations, this.image})
      : super._();

  @override
  Quote rebuild(void Function(QuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteBuilder toBuilder() => new QuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quote &&
        id == other.id &&
        quotation_text == other.quotation_text &&
        translations == other.translations &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), quotation_text.hashCode),
            translations.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Quote')
          ..add('id', id)
          ..add('quotation_text', quotation_text)
          ..add('translations', translations)
          ..add('image', image))
        .toString();
  }
}

class QuoteBuilder implements Builder<Quote, QuoteBuilder> {
  _$Quote _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _quotation_text;
  String get quotation_text => _$this._quotation_text;
  set quotation_text(String quotation_text) =>
      _$this._quotation_text = quotation_text;

  TranslationsBuilder _translations;
  TranslationsBuilder get translations =>
      _$this._translations ??= new TranslationsBuilder();
  set translations(TranslationsBuilder translations) =>
      _$this._translations = translations;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  QuoteBuilder();

  QuoteBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _quotation_text = _$v.quotation_text;
      _translations = _$v.translations?.toBuilder();
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Quote;
  }

  @override
  void update(void Function(QuoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Quote build() {
    _$Quote _$result;
    try {
      _$result = _$v ??
          new _$Quote._(
              id: id,
              quotation_text: quotation_text,
              translations: _translations?.build(),
              image: image);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Quote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
