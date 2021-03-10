// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_password_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditPasswordState extends EditPasswordState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool success;

  factory _$EditPasswordState(
          [void Function(EditPasswordStateBuilder) updates]) =>
      (new EditPasswordStateBuilder()..update(updates)).build();

  _$EditPasswordState._({this.isLoading, this.error, this.success})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('EditPasswordState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('EditPasswordState', 'error');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('EditPasswordState', 'success');
    }
  }

  @override
  EditPasswordState rebuild(void Function(EditPasswordStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditPasswordStateBuilder toBuilder() =>
      new EditPasswordStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditPasswordState &&
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
    return (newBuiltValueToStringHelper('EditPasswordState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('success', success))
        .toString();
  }
}

class EditPasswordStateBuilder
    implements Builder<EditPasswordState, EditPasswordStateBuilder> {
  _$EditPasswordState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  EditPasswordStateBuilder();

  EditPasswordStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditPasswordState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EditPasswordState;
  }

  @override
  void update(void Function(EditPasswordStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditPasswordState build() {
    final _$result = _$v ??
        new _$EditPasswordState._(
            isLoading: isLoading, error: error, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
