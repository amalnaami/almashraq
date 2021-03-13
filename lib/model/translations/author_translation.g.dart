// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_translation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthorTranslation> _$authorTranslationSerializer =
    new _$AuthorTranslationSerializer();

class _$AuthorTranslationSerializer
    implements StructuredSerializer<AuthorTranslation> {
  @override
  final Iterable<Type> types = const [AuthorTranslation, _$AuthorTranslation];
  @override
  final String wireName = 'AuthorTranslation';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthorTranslation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ar != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(object.ar,
            specifiedType: const FullType(AuthorLanguage)));
    }
    if (object.en != null) {
      result
        ..add('en')
        ..add(serializers.serialize(object.en,
            specifiedType: const FullType(AuthorLanguage)));
    }
    return result;
  }

  @override
  AuthorTranslation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorTranslationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthorLanguage)) as AuthorLanguage);
          break;
        case 'en':
          result.en.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthorLanguage)) as AuthorLanguage);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthorTranslation extends AuthorTranslation {
  @override
  final AuthorLanguage ar;
  @override
  final AuthorLanguage en;

  factory _$AuthorTranslation(
          [void Function(AuthorTranslationBuilder) updates]) =>
      (new AuthorTranslationBuilder()..update(updates)).build();

  _$AuthorTranslation._({this.ar, this.en}) : super._();

  @override
  AuthorTranslation rebuild(void Function(AuthorTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorTranslationBuilder toBuilder() =>
      new AuthorTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorTranslation && ar == other.ar && en == other.en;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ar.hashCode), en.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorTranslation')
          ..add('ar', ar)
          ..add('en', en))
        .toString();
  }
}

class AuthorTranslationBuilder
    implements Builder<AuthorTranslation, AuthorTranslationBuilder> {
  _$AuthorTranslation _$v;

  AuthorLanguageBuilder _ar;
  AuthorLanguageBuilder get ar => _$this._ar ??= new AuthorLanguageBuilder();
  set ar(AuthorLanguageBuilder ar) => _$this._ar = ar;

  AuthorLanguageBuilder _en;
  AuthorLanguageBuilder get en => _$this._en ??= new AuthorLanguageBuilder();
  set en(AuthorLanguageBuilder en) => _$this._en = en;

  AuthorTranslationBuilder();

  AuthorTranslationBuilder get _$this {
    if (_$v != null) {
      _ar = _$v.ar?.toBuilder();
      _en = _$v.en?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorTranslation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthorTranslation;
  }

  @override
  void update(void Function(AuthorTranslationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorTranslation build() {
    _$AuthorTranslation _$result;
    try {
      _$result =
          _$v ?? new _$AuthorTranslation._(ar: _ar?.build(), en: _en?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ar';
        _ar?.build();
        _$failedField = 'en';
        _en?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthorTranslation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
