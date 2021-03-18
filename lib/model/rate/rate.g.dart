// GENERATED CODE - DO NOT MODIFY BY HAND

part of rate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rate> _$rateSerializer = new _$RateSerializer();

class _$RateSerializer implements StructuredSerializer<Rate> {
  @override
  final Iterable<Type> types = const [Rate, _$Rate];
  @override
  final String wireName = 'Rate';

  @override
  Iterable<Object> serialize(Serializers serializers, Rate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rate != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(object.rate,
            specifiedType: const FullType(String)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  Rate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$Rate extends Rate {
  @override
  final String rate;
  @override
  final String note;
  @override
  final User user;

  factory _$Rate([void Function(RateBuilder) updates]) =>
      (new RateBuilder()..update(updates)).build();

  _$Rate._({this.rate, this.note, this.user}) : super._();

  @override
  Rate rebuild(void Function(RateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateBuilder toBuilder() => new RateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rate &&
        rate == other.rate &&
        note == other.note &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, rate.hashCode), note.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rate')
          ..add('rate', rate)
          ..add('note', note)
          ..add('user', user))
        .toString();
  }
}

class RateBuilder implements Builder<Rate, RateBuilder> {
  _$Rate _$v;

  String _rate;
  String get rate => _$this._rate;
  set rate(String rate) => _$this._rate = rate;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  RateBuilder();

  RateBuilder get _$this {
    if (_$v != null) {
      _rate = _$v.rate;
      _note = _$v.note;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Rate;
  }

  @override
  void update(void Function(RateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Rate build() {
    _$Rate _$result;
    try {
      _$result =
          _$v ?? new _$Rate._(rate: rate, note: note, user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Rate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
