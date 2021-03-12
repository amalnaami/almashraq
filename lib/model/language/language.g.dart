// GENERATED CODE - DO NOT MODIFY BY HAND

part of language;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Language> _$languageSerializer = new _$LanguageSerializer();

class _$LanguageSerializer implements StructuredSerializer<Language> {
  @override
  final Iterable<Type> types = const [Language, _$Language];
  @override
  final String wireName = 'Language';

  @override
  Iterable<Object> serialize(Serializers serializers, Language object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.book_name != null) {
      result
        ..add('book_name')
        ..add(serializers.serialize(object.book_name,
            specifiedType: const FullType(String)));
    }
    if (object.author_name != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.author_name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.publish != null) {
      result
        ..add('publish')
        ..add(serializers.serialize(object.publish,
            specifiedType: const FullType(String)));
    }
    if (object.sub_name != null) {
      result
        ..add('sub_name')
        ..add(serializers.serialize(object.sub_name,
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
  Language deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguageBuilder();

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
        case 'book_name':
          result.book_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_name':
          result.author_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publish':
          result.publish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub_name':
          result.sub_name = serializers.deserialize(value,
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

class _$Language extends Language {
  @override
  final String name;
  @override
  final String book_name;
  @override
  final String author_name;
  @override
  final String description;
  @override
  final String publish;
  @override
  final String sub_name;
  @override
  final String brief;

  factory _$Language([void Function(LanguageBuilder) updates]) =>
      (new LanguageBuilder()..update(updates)).build();

  _$Language._(
      {this.name,
      this.book_name,
      this.author_name,
      this.description,
      this.publish,
      this.sub_name,
      this.brief})
      : super._();

  @override
  Language rebuild(void Function(LanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageBuilder toBuilder() => new LanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Language &&
        name == other.name &&
        book_name == other.book_name &&
        author_name == other.author_name &&
        description == other.description &&
        publish == other.publish &&
        sub_name == other.sub_name &&
        brief == other.brief;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), book_name.hashCode),
                        author_name.hashCode),
                    description.hashCode),
                publish.hashCode),
            sub_name.hashCode),
        brief.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Language')
          ..add('name', name)
          ..add('book_name', book_name)
          ..add('author_name', author_name)
          ..add('description', description)
          ..add('publish', publish)
          ..add('sub_name', sub_name)
          ..add('brief', brief))
        .toString();
  }
}

class LanguageBuilder implements Builder<Language, LanguageBuilder> {
  _$Language _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _book_name;
  String get book_name => _$this._book_name;
  set book_name(String book_name) => _$this._book_name = book_name;

  String _author_name;
  String get author_name => _$this._author_name;
  set author_name(String author_name) => _$this._author_name = author_name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _publish;
  String get publish => _$this._publish;
  set publish(String publish) => _$this._publish = publish;

  String _sub_name;
  String get sub_name => _$this._sub_name;
  set sub_name(String sub_name) => _$this._sub_name = sub_name;

  String _brief;
  String get brief => _$this._brief;
  set brief(String brief) => _$this._brief = brief;

  LanguageBuilder();

  LanguageBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _book_name = _$v.book_name;
      _author_name = _$v.author_name;
      _description = _$v.description;
      _publish = _$v.publish;
      _sub_name = _$v.sub_name;
      _brief = _$v.brief;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Language other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Language;
  }

  @override
  void update(void Function(LanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Language build() {
    final _$result = _$v ??
        new _$Language._(
            name: name,
            book_name: book_name,
            author_name: author_name,
            description: description,
            publish: publish,
            sub_name: sub_name,
            brief: brief);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
