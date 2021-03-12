// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_language;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryLanguage> _$countryLanguageSerializer =
    new _$CountryLanguageSerializer();

class _$CountryLanguageSerializer
    implements StructuredSerializer<CountryLanguage> {
  @override
  final Iterable<Type> types = const [CountryLanguage, _$CountryLanguage];
  @override
  final String wireName = 'CountryLanguage';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryLanguage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nationality != null) {
      result
        ..add('nationality')
        ..add(serializers.serialize(object.nationality,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountryLanguage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryLanguageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nationality':
          result.nationality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryLanguage extends CountryLanguage {
  @override
  final String name;
  @override
  final String nationality;

  factory _$CountryLanguage([void Function(CountryLanguageBuilder) updates]) =>
      (new CountryLanguageBuilder()..update(updates)).build();

  _$CountryLanguage._({this.name, this.nationality}) : super._();

  @override
  CountryLanguage rebuild(void Function(CountryLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryLanguageBuilder toBuilder() =>
      new CountryLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryLanguage &&
        name == other.name &&
        nationality == other.nationality;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), nationality.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryLanguage')
          ..add('name', name)
          ..add('nationality', nationality))
        .toString();
  }
}

class CountryLanguageBuilder
    implements Builder<CountryLanguage, CountryLanguageBuilder> {
  _$CountryLanguage _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nationality;
  String get nationality => _$this._nationality;
  set nationality(String nationality) => _$this._nationality = nationality;

  CountryLanguageBuilder();

  CountryLanguageBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _nationality = _$v.nationality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryLanguage;
  }

  @override
  void update(void Function(CountryLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryLanguage build() {
    final _$result =
        _$v ?? new _$CountryLanguage._(name: name, nationality: nationality);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
