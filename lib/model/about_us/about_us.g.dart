// GENERATED CODE - DO NOT MODIFY BY HAND

part of about_us;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AboutUs> _$aboutUsSerializer = new _$AboutUsSerializer();

class _$AboutUsSerializer implements StructuredSerializer<AboutUs> {
  @override
  final Iterable<Type> types = const [AboutUs, _$AboutUs];
  @override
  final String wireName = 'AboutUs';

  @override
  Iterable<Object> serialize(Serializers serializers, AboutUs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.translations != null) {
      result
        ..add('translations')
        ..add(serializers.serialize(object.translations,
            specifiedType: const FullType(AboutUsTranslation)));
    }
    return result;
  }

  @override
  AboutUs deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AboutUsBuilder();

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
        case 'translations':
          result.translations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AboutUsTranslation))
              as AboutUsTranslation);
          break;
      }
    }

    return result.build();
  }
}

class _$AboutUs extends AboutUs {
  @override
  final int id;
  @override
  final AboutUsTranslation translations;

  factory _$AboutUs([void Function(AboutUsBuilder) updates]) =>
      (new AboutUsBuilder()..update(updates)).build();

  _$AboutUs._({this.id, this.translations}) : super._();

  @override
  AboutUs rebuild(void Function(AboutUsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutUsBuilder toBuilder() => new AboutUsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutUs &&
        id == other.id &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AboutUs')
          ..add('id', id)
          ..add('translations', translations))
        .toString();
  }
}

class AboutUsBuilder implements Builder<AboutUs, AboutUsBuilder> {
  _$AboutUs _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  AboutUsTranslationBuilder _translations;
  AboutUsTranslationBuilder get translations =>
      _$this._translations ??= new AboutUsTranslationBuilder();
  set translations(AboutUsTranslationBuilder translations) =>
      _$this._translations = translations;

  AboutUsBuilder();

  AboutUsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _translations = _$v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutUs other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AboutUs;
  }

  @override
  void update(void Function(AboutUsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AboutUs build() {
    _$AboutUs _$result;
    try {
      _$result =
          _$v ?? new _$AboutUs._(id: id, translations: _translations?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AboutUs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
