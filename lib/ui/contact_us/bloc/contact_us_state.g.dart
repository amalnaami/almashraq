// GENERATED CODE - DO NOT MODIFY BY HAND

part of contact_us_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContactUsState extends ContactUsState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool success;

  factory _$ContactUsState([void Function(ContactUsStateBuilder) updates]) =>
      (new ContactUsStateBuilder()..update(updates)).build();

  _$ContactUsState._({this.isLoading, this.error, this.success}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('ContactUsState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('ContactUsState', 'error');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('ContactUsState', 'success');
    }
  }

  @override
  ContactUsState rebuild(void Function(ContactUsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactUsStateBuilder toBuilder() =>
      new ContactUsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactUsState &&
        isLoading == other.isLoading &&
        error == other.error &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactUsState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class ContactUsStateBuilder
    implements Builder<ContactUsState, ContactUsStateBuilder> {
  _$ContactUsState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  ContactUsStateBuilder();

  ContactUsStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactUsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactUsState;
  }

  @override
  void update(void Function(ContactUsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactUsState build() {
    final _$result = _$v ??
        new _$ContactUsState._(
            isLoading: isLoading, error: error, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
