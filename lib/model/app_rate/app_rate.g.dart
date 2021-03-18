// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_rate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppRate> _$appRateSerializer = new _$AppRateSerializer();

class _$AppRateSerializer implements StructuredSerializer<AppRate> {
  @override
  final Iterable<Type> types = const [AppRate, _$AppRate];
  @override
  final String wireName = 'AppRate';

  @override
  Iterable<Object> serialize(Serializers serializers, AppRate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.avg_rate != null) {
      result
        ..add('avg_rate')
        ..add(serializers.serialize(object.avg_rate,
            specifiedType: const FullType(String)));
    }
    if (object.all_rates != null) {
      result
        ..add('all_rates')
        ..add(serializers.serialize(object.all_rates,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Rate)])));
    }
    return result;
  }

  @override
  AppRate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppRateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'avg_rate':
          result.avg_rate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'all_rates':
          result.all_rates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Rate)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppRate extends AppRate {
  @override
  final String avg_rate;
  @override
  final BuiltList<Rate> all_rates;

  factory _$AppRate([void Function(AppRateBuilder) updates]) =>
      (new AppRateBuilder()..update(updates)).build();

  _$AppRate._({this.avg_rate, this.all_rates}) : super._();

  @override
  AppRate rebuild(void Function(AppRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppRateBuilder toBuilder() => new AppRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppRate &&
        avg_rate == other.avg_rate &&
        all_rates == other.all_rates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, avg_rate.hashCode), all_rates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppRate')
          ..add('avg_rate', avg_rate)
          ..add('all_rates', all_rates))
        .toString();
  }
}

class AppRateBuilder implements Builder<AppRate, AppRateBuilder> {
  _$AppRate _$v;

  String _avg_rate;
  String get avg_rate => _$this._avg_rate;
  set avg_rate(String avg_rate) => _$this._avg_rate = avg_rate;

  ListBuilder<Rate> _all_rates;
  ListBuilder<Rate> get all_rates =>
      _$this._all_rates ??= new ListBuilder<Rate>();
  set all_rates(ListBuilder<Rate> all_rates) => _$this._all_rates = all_rates;

  AppRateBuilder();

  AppRateBuilder get _$this {
    if (_$v != null) {
      _avg_rate = _$v.avg_rate;
      _all_rates = _$v.all_rates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppRate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppRate;
  }

  @override
  void update(void Function(AppRateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppRate build() {
    _$AppRate _$result;
    try {
      _$result = _$v ??
          new _$AppRate._(avg_rate: avg_rate, all_rates: _all_rates?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'all_rates';
        _all_rates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppRate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
