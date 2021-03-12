// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryModel> _$countryModelSerializer =
    new _$CountryModelSerializer();

class _$CountryModelSerializer implements StructuredSerializer<CountryModel> {
  @override
  final Iterable<Type> types = const [CountryModel, _$CountryModel];
  @override
  final String wireName = 'CountryModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(CountryTranslations)));
    }
    return result;
  }

  @override
  CountryModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CountryTranslations))
              as CountryTranslations);
          break;
      }
    }

    return result.build();
  }
}

class _$CountryModel extends CountryModel {
  @override
  final String id;
  @override
  final CountryTranslations translations;

  factory _$CountryModel([void Function(CountryModelBuilder) updates]) =>
      (new CountryModelBuilder()..update(updates)).build();

  _$CountryModel._({this.id, this.translations}) : super._();

  @override
  CountryModel rebuild(void Function(CountryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryModelBuilder toBuilder() => new CountryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryModel &&
        id == other.id &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryModel')
          ..add('id', id)
          ..add('translations', translations))
        .toString();
  }
}

class CountryModelBuilder
    implements Builder<CountryModel, CountryModelBuilder> {
  _$CountryModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  CountryTranslationsBuilder _translations;
  CountryTranslationsBuilder get translations =>
      _$this._translations ??= new CountryTranslationsBuilder();
  set translations(CountryTranslationsBuilder translations) =>
      _$this._translations = translations;

  CountryModelBuilder();

  CountryModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _translations = _$v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryModel;
  }

  @override
  void update(void Function(CountryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryModel build() {
    _$CountryModel _$result;
    try {
      _$result = _$v ??
          new _$CountryModel._(id: id, translations: _translations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
