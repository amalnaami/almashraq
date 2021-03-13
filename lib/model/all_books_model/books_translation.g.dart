// GENERATED CODE - DO NOT MODIFY BY HAND

part of books_translation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksTranslation> _$booksTranslationSerializer =
    new _$BooksTranslationSerializer();

class _$BooksTranslationSerializer
    implements StructuredSerializer<BooksTranslation> {
  @override
  final Iterable<Type> types = const [BooksTranslation, _$BooksTranslation];
  @override
  final String wireName = 'BooksTranslation';

  @override
  Iterable<Object> serialize(Serializers serializers, BooksTranslation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ar != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(object.ar,
            specifiedType: const FullType(BooksData)));
    }
    if (object.en != null) {
      result
        ..add('en')
        ..add(serializers.serialize(object.en,
            specifiedType: const FullType(BooksData)));
    }
    return result;
  }

  @override
  BooksTranslation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksTranslationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
              specifiedType: const FullType(BooksData)) as BooksData);
          break;
        case 'en':
          result.en.replace(serializers.deserialize(value,
              specifiedType: const FullType(BooksData)) as BooksData);
          break;
      }
    }

    return result.build();
  }
}

class _$BooksTranslation extends BooksTranslation {
  @override
  final BooksData ar;
  @override
  final BooksData en;

  factory _$BooksTranslation(
          [void Function(BooksTranslationBuilder) updates]) =>
      (new BooksTranslationBuilder()..update(updates)).build();

  _$BooksTranslation._({this.ar, this.en}) : super._();

  @override
  BooksTranslation rebuild(void Function(BooksTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksTranslationBuilder toBuilder() =>
      new BooksTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksTranslation && ar == other.ar && en == other.en;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ar.hashCode), en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooksTranslation')
          ..add('ar', ar)
          ..add('en', en))
        .toString();
  }
}

class BooksTranslationBuilder
    implements Builder<BooksTranslation, BooksTranslationBuilder> {
  _$BooksTranslation _$v;

  BooksDataBuilder _ar;
  BooksDataBuilder get ar => _$this._ar ??= new BooksDataBuilder();
  set ar(BooksDataBuilder ar) => _$this._ar = ar;

  BooksDataBuilder _en;
  BooksDataBuilder get en => _$this._en ??= new BooksDataBuilder();
  set en(BooksDataBuilder en) => _$this._en = en;

  BooksTranslationBuilder();

  BooksTranslationBuilder get _$this {
    if (_$v != null) {
      _ar = _$v.ar?.toBuilder();
      _en = _$v.en?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksTranslation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BooksTranslation;
  }

  @override
  void update(void Function(BooksTranslationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooksTranslation build() {
    _$BooksTranslation _$result;
    try {
      _$result =
          _$v ?? new _$BooksTranslation._(ar: _ar?.build(), en: _en?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ar';
        _ar?.build();
        _$failedField = 'en';
        _en?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BooksTranslation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
