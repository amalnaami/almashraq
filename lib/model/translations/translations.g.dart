// GENERATED CODE - DO NOT MODIFY BY HAND

part of translations;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Translations> _$translationsSerializer =
    new _$TranslationsSerializer();

class _$TranslationsSerializer implements StructuredSerializer<Translations> {
  @override
  final Iterable<Type> types = const [Translations, _$Translations];
  @override
  final String wireName = 'Translations';

  @override
  Iterable<Object> serialize(Serializers serializers, Translations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ar != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(object.ar,
            specifiedType: const FullType(Language)));
    }
    if (object.en != null) {
      result
        ..add('en')
        ..add(serializers.serialize(object.en,
            specifiedType: const FullType(Language)));
    }
    return result;
  }

  @override
  Translations deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
              specifiedType: const FullType(Language)) as Language);
          break;
        case 'en':
          result.en.replace(serializers.deserialize(value,
              specifiedType: const FullType(Language)) as Language);
          break;
      }
    }

    return result.build();
  }
}

class _$Translations extends Translations {
  @override
  final Language ar;
  @override
  final Language en;

  factory _$Translations([void Function(TranslationsBuilder) updates]) =>
      (new TranslationsBuilder()..update(updates)).build();

  _$Translations._({this.ar, this.en}) : super._();

  @override
  Translations rebuild(void Function(TranslationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationsBuilder toBuilder() => new TranslationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Translations && ar == other.ar && en == other.en;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ar.hashCode), en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Translations')
          ..add('ar', ar)
          ..add('en', en))
        .toString();
  }
}

class TranslationsBuilder
    implements Builder<Translations, TranslationsBuilder> {
  _$Translations _$v;

  LanguageBuilder _ar;
  LanguageBuilder get ar => _$this._ar ??= new LanguageBuilder();
  set ar(LanguageBuilder ar) => _$this._ar = ar;

  LanguageBuilder _en;
  LanguageBuilder get en => _$this._en ??= new LanguageBuilder();
  set en(LanguageBuilder en) => _$this._en = en;

  TranslationsBuilder();

  TranslationsBuilder get _$this {
    if (_$v != null) {
      _ar = _$v.ar?.toBuilder();
      _en = _$v.en?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Translations other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Translations;
  }

  @override
  void update(void Function(TranslationsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Translations build() {
    _$Translations _$result;
    try {
      _$result =
          _$v ?? new _$Translations._(ar: _ar?.build(), en: _en?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ar';
        _ar?.build();
        _$failedField = 'en';
        _en?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Translations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
