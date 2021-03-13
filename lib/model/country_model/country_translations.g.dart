// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_translations;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryTranslations> _$countryTranslationsSerializer =
    new _$CountryTranslationsSerializer();

class _$CountryTranslationsSerializer
    implements StructuredSerializer<CountryTranslations> {
  @override
  final Iterable<Type> types = const [
    CountryTranslations,
    _$CountryTranslations
  ];
  @override
  final String wireName = 'CountryTranslations';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CountryTranslations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ar != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(object.ar,
            specifiedType: const FullType(CountryLanguage)));
    }
    if (object.en != null) {
      result
        ..add('en')
        ..add(serializers.serialize(object.en,
            specifiedType: const FullType(CountryLanguage)));
    }
    return result;
  }

  @override
  CountryTranslations deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryTranslationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CountryLanguage))
              as CountryLanguage);
          break;
        case 'en':
          result.en.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CountryLanguage))
              as CountryLanguage);
          break;
      }
    }

    return result.build();
  }
}

class _$CountryTranslations extends CountryTranslations {
  @override
  final CountryLanguage ar;
  @override
  final CountryLanguage en;

  factory _$CountryTranslations(
          [void Function(CountryTranslationsBuilder) updates]) =>
      (new CountryTranslationsBuilder()..update(updates)).build();

  _$CountryTranslations._({this.ar, this.en}) : super._();

  @override
  CountryTranslations rebuild(
          void Function(CountryTranslationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryTranslationsBuilder toBuilder() =>
      new CountryTranslationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryTranslations && ar == other.ar && en == other.en;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ar.hashCode), en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryTranslations')
          ..add('ar', ar)
          ..add('en', en))
        .toString();
  }
}

class CountryTranslationsBuilder
    implements Builder<CountryTranslations, CountryTranslationsBuilder> {
  _$CountryTranslations _$v;

  CountryLanguageBuilder _ar;
  CountryLanguageBuilder get ar => _$this._ar ??= new CountryLanguageBuilder();
  set ar(CountryLanguageBuilder ar) => _$this._ar = ar;

  CountryLanguageBuilder _en;
  CountryLanguageBuilder get en => _$this._en ??= new CountryLanguageBuilder();
  set en(CountryLanguageBuilder en) => _$this._en = en;

  CountryTranslationsBuilder();

  CountryTranslationsBuilder get _$this {
    if (_$v != null) {
      _ar = _$v.ar?.toBuilder();
      _en = _$v.en?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryTranslations other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryTranslations;
  }

  @override
  void update(void Function(CountryTranslationsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryTranslations build() {
    _$CountryTranslations _$result;
    try {
      _$result = _$v ??
          new _$CountryTranslations._(ar: _ar?.build(), en: _en?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ar';
        _ar?.build();
        _$failedField = 'en';
        _en?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryTranslations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
