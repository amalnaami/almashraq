// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_rate_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddRate extends AddRate {
  @override
  final int rate;
  @override
  final String note;

  factory _$AddRate([void Function(AddRateBuilder) updates]) =>
      (new AddRateBuilder()..update(updates)).build();

  _$AddRate._({this.rate, this.note}) : super._() {
    if (rate == null) {
      throw new BuiltValueNullFieldError('AddRate', 'rate');
    }
    if (note == null) {
      throw new BuiltValueNullFieldError('AddRate', 'note');
    }
  }

  @override
  AddRate rebuild(void Function(AddRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddRateBuilder toBuilder() => new AddRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddRate && rate == other.rate && note == other.note;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rate.hashCode), note.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddRate')
          ..add('rate', rate)
          ..add('note', note))
        .toString();
  }
}

class AddRateBuilder implements Builder<AddRate, AddRateBuilder> {
  _$AddRate _$v;

  int _rate;
  int get rate => _$this._rate;
  set rate(int rate) => _$this._rate = rate;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  AddRateBuilder();

  AddRateBuilder get _$this {
    if (_$v != null) {
      _rate = _$v.rate;
      _note = _$v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddRate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddRate;
  }

  @override
  void update(void Function(AddRateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddRate build() {
    final _$result = _$v ?? new _$AddRate._(rate: rate, note: note);
    replace(_$result);
    return _$result;
  }
}

class _$ClearState extends ClearState {
  factory _$ClearState([void Function(ClearStateBuilder) updates]) =>
      (new ClearStateBuilder()..update(updates)).build();

  _$ClearState._() : super._();

  @override
  ClearState rebuild(void Function(ClearStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearStateBuilder toBuilder() => new ClearStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearState;
  }

  @override
  int get hashCode {
    return 338996177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearState').toString();
  }
}

class ClearStateBuilder implements Builder<ClearState, ClearStateBuilder> {
  _$ClearState _$v;

  ClearStateBuilder();

  @override
  void replace(ClearState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearState;
  }

  @override
  void update(void Function(ClearStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearState build() {
    final _$result = _$v ?? new _$ClearState._();
    replace(_$result);
    return _$result;
  }
}

class _$IsLogin extends IsLogin {
  factory _$IsLogin([void Function(IsLoginBuilder) updates]) =>
      (new IsLoginBuilder()..update(updates)).build();

  _$IsLogin._() : super._();

  @override
  IsLogin rebuild(void Function(IsLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IsLoginBuilder toBuilder() => new IsLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IsLogin;
  }

  @override
  int get hashCode {
    return 407465218;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('IsLogin').toString();
  }
}

class IsLoginBuilder implements Builder<IsLogin, IsLoginBuilder> {
  _$IsLogin _$v;

  IsLoginBuilder();

  @override
  void replace(IsLogin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IsLogin;
  }

  @override
  void update(void Function(IsLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IsLogin build() {
    final _$result = _$v ?? new _$IsLogin._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
