// GENERATED CODE - DO NOT MODIFY BY HAND

part of about_us_language;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AboutUsLanguage> _$aboutUsLanguageSerializer =
    new _$AboutUsLanguageSerializer();

class _$AboutUsLanguageSerializer
    implements StructuredSerializer<AboutUsLanguage> {
  @override
  final Iterable<Type> types = const [AboutUsLanguage, _$AboutUsLanguage];
  @override
  final String wireName = 'AboutUsLanguage';

  @override
  Iterable<Object> serialize(Serializers serializers, AboutUsLanguage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AboutUsLanguage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AboutUsLanguageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AboutUsLanguage extends AboutUsLanguage {
  @override
  final String text;

  factory _$AboutUsLanguage([void Function(AboutUsLanguageBuilder) updates]) =>
      (new AboutUsLanguageBuilder()..update(updates)).build();

  _$AboutUsLanguage._({this.text}) : super._();

  @override
  AboutUsLanguage rebuild(void Function(AboutUsLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutUsLanguageBuilder toBuilder() =>
      new AboutUsLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutUsLanguage && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AboutUsLanguage')..add('text', text))
        .toString();
  }
}

class AboutUsLanguageBuilder
    implements Builder<AboutUsLanguage, AboutUsLanguageBuilder> {
  _$AboutUsLanguage _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  AboutUsLanguageBuilder();

  AboutUsLanguageBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutUsLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AboutUsLanguage;
  }

  @override
  void update(void Function(AboutUsLanguageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AboutUsLanguage build() {
    final _$result = _$v ?? new _$AboutUsLanguage._(text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
