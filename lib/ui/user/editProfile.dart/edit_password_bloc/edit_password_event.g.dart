// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_password_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitRequest extends SubmitRequest {
  @override
  final String newPassword;

  factory _$SubmitRequest([void Function(SubmitRequestBuilder) updates]) =>
      (new SubmitRequestBuilder()..update(updates)).build();

  _$SubmitRequest._({this.newPassword}) : super._() {
    if (newPassword == null) {
      throw new BuiltValueNullFieldError('SubmitRequest', 'newPassword');
    }
  }

  @override
  SubmitRequest rebuild(void Function(SubmitRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitRequestBuilder toBuilder() => new SubmitRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitRequest && newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    return $jf($jc(0, newPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubmitRequest')
          ..add('newPassword', newPassword))
        .toString();
  }
}

class SubmitRequestBuilder
    implements Builder<SubmitRequest, SubmitRequestBuilder> {
  _$SubmitRequest _$v;

  String _newPassword;
  String get newPassword => _$this._newPassword;
  set newPassword(String newPassword) => _$this._newPassword = newPassword;

  SubmitRequestBuilder();

  SubmitRequestBuilder get _$this {
    if (_$v != null) {
      _newPassword = _$v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmitRequest;
  }

  @override
  void update(void Function(SubmitRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmitRequest build() {
    final _$result = _$v ?? new _$SubmitRequest._(newPassword: newPassword);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
