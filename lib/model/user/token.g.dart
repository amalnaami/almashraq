// GENERATED CODE - DO NOT MODIFY BY HAND

part of token;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Token> _$tokenSerializer = new _$TokenSerializer();

class _$TokenSerializer implements StructuredSerializer<Token> {
  @override
  final Iterable<Type> types = const [Token, _$Token];
  @override
  final String wireName = 'Token';

  @override
  Iterable<Object> serialize(Serializers serializers, Token object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.access_token != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.access_token,
            specifiedType: const FullType(String)));
    }
    if (object.expires_in != null) {
      result
        ..add('expires_in')
        ..add(serializers.serialize(object.expires_in,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Token deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expires_in = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Token extends Token {
  @override
  final String access_token;
  @override
  final int expires_in;

  factory _$Token([void Function(TokenBuilder) updates]) =>
      (new TokenBuilder()..update(updates)).build();

  _$Token._({this.access_token, this.expires_in}) : super._();

  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => new TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token &&
        access_token == other.access_token &&
        expires_in == other.expires_in;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, access_token.hashCode), expires_in.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Token')
          ..add('access_token', access_token)
          ..add('expires_in', expires_in))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder> {
  _$Token _$v;

  String _access_token;
  String get access_token => _$this._access_token;
  set access_token(String access_token) => _$this._access_token = access_token;

  int _expires_in;
  int get expires_in => _$this._expires_in;
  set expires_in(int expires_in) => _$this._expires_in = expires_in;

  TokenBuilder();

  TokenBuilder get _$this {
    if (_$v != null) {
      _access_token = _$v.access_token;
      _expires_in = _$v.expires_in;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Token other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Token build() {
    final _$result = _$v ??
        new _$Token._(access_token: access_token, expires_in: expires_in);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
