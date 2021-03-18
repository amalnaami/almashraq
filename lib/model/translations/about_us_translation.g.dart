// GENERATED CODE - DO NOT MODIFY BY HAND

part of about_us_translation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AboutUsTranslation> _$aboutUsTranslationSerializer =
    new _$AboutUsTranslationSerializer();

class _$AboutUsTranslationSerializer
    implements StructuredSerializer<AboutUsTranslation> {
  @override
  final Iterable<Type> types = const [AboutUsTranslation, _$AboutUsTranslation];
  @override
  final String wireName = 'AboutUsTranslation';

  @override
  Iterable<Object> serialize(Serializers serializers, AboutUsTranslation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ar != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(object.ar,
            specifiedType: const FullType(AboutUsLanguage)));
    }
    if (object.en != null) {
      result
        ..add('en')
        ..add(serializers.serialize(object.en,
            specifiedType: const FullType(AboutUsLanguage)));
    }
    return result;
  }

  @override
  AboutUsTranslation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AboutUsTranslationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AboutUsLanguage))
              as AboutUsLanguage);
          break;
        case 'en':
          result.en.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AboutUsLanguage))
              as AboutUsLanguage);
          break;
      }
    }

    return result.build();
  }
}

class _$AboutUsTranslation extends AboutUsTranslation {
  @override
  final AboutUsLanguage ar;
  @override
  final AboutUsLanguage en;

  factory _$AboutUsTranslation(
          [void Function(AboutUsTranslationBuilder) updates]) =>
      (new AboutUsTranslationBuilder()..update(updates)).build();

  _$AboutUsTranslation._({this.ar, this.en}) : super._();

  @override
  AboutUsTranslation rebuild(
          void Function(AboutUsTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutUsTranslationBuilder toBuilder() =>
      new AboutUsTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutUsTranslation && ar == other.ar && en == other.en;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ar.hashCode), en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AboutUsTranslation')
          ..add('ar', ar)
          ..add('en', en))
        .toString();
  }
}

class AboutUsTranslationBuilder
    implements Builder<AboutUsTranslation, AboutUsTranslationBuilder> {
  _$AboutUsTranslation _$v;

  AboutUsLanguageBuilder _ar;
  AboutUsLanguageBuilder get ar => _$this._ar ??= new AboutUsLanguageBuilder();
  set ar(AboutUsLanguageBuilder ar) => _$this._ar = ar;

  AboutUsLanguageBuilder _en;
  AboutUsLanguageBuilder get en => _$this._en ??= new AboutUsLanguageBuilder();
  set en(AboutUsLanguageBuilder en) => _$this._en = en;

  AboutUsTranslationBuilder();

  AboutUsTranslationBuilder get _$this {
    if (_$v != null) {
      _ar = _$v.ar?.toBuilder();
      _en = _$v.en?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutUsTranslation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AboutUsTranslation;
  }

  @override
  void update(void Function(AboutUsTranslationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AboutUsTranslation build() {
    _$AboutUsTranslation _$result;
    try {
      _$result =
          _$v ?? new _$AboutUsTranslation._(ar: _ar?.build(), en: _en?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ar';
        _ar?.build();
        _$failedField = 'en';
        _en?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AboutUsTranslation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
