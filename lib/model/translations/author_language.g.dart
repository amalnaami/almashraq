// GENERATED CODE - DO NOT MODIFY BY HAND

part of author_language;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthorLanguage> _$authorLanguageSerializer =
    new _$AuthorLanguageSerializer();

class _$AuthorLanguageSerializer
    implements StructuredSerializer<AuthorLanguage> {
  @override
  final Iterable<Type> types = const [AuthorLanguage, _$AuthorLanguage];
  @override
  final String wireName = 'AuthorLanguage';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthorLanguage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.brief != null) {
      result
        ..add('brief')
        ..add(serializers.serialize(object.brief,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthorLanguage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorLanguageBuilder();

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
        case 'brief':
          result.brief = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthorLanguage extends AuthorLanguage {
  @override
  final String name;
  @override
  final String brief;

  factory _$AuthorLanguage([void Function(AuthorLanguageBuilder) updates]) =>
      (new AuthorLanguageBuilder()..update(updates)).build();

  _$AuthorLanguage._({this.name, this.brief}) : super._();

  @override
  AuthorLanguage rebuild(void Function(AuthorLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorLanguageBuilder toBuilder() =>
      new AuthorLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorLanguage &&
        name == other.name &&
        brief == other.brief;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), brief.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorLanguage')
          ..add('name', name)
          ..add('brief', brief))
        .toString();
  }
}

class AuthorLanguageBuilder
    implements Builder<AuthorLanguage, AuthorLanguageBuilder> {
  _$AuthorLanguage _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _brief;
  String get brief => _$this._brief;
  set brief(String brief) => _$this._brief = brief;

  AuthorLanguageBuilder();

  AuthorLanguageBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _brief = _$v.brief;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthorLanguage;
  }

  @override
  void update(void Function(AuthorLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorLanguage build() {
    final _$result = _$v ?? new _$AuthorLanguage._(name: name, brief: brief);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
