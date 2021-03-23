// GENERATED CODE - DO NOT MODIFY BY HAND

part of subscribe_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscribeState extends SubscribeState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Packages> packages;
  @override
  final bool success;
  @override
  final Invoice invoice;

  factory _$SubscribeState([void Function(SubscribeStateBuilder) updates]) =>
      (new SubscribeStateBuilder()..update(updates)).build();

  _$SubscribeState._(
      {this.isLoading, this.error, this.packages, this.success, this.invoice})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SubscribeState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SubscribeState', 'error');
    }
    if (packages == null) {
      throw new BuiltValueNullFieldError('SubscribeState', 'packages');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('SubscribeState', 'success');
    }
  }

  @override
  SubscribeState rebuild(void Function(SubscribeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscribeStateBuilder toBuilder() =>
      new SubscribeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscribeState &&
        isLoading == other.isLoading &&
        error == other.error &&
        packages == other.packages &&
        success == other.success &&
        invoice == other.invoice;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                packages.hashCode),
            success.hashCode),
        invoice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscribeState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('packages', packages)
          ..add('success', success)
          ..add('invoice', invoice))
        .toString();
  }
}

class SubscribeStateBuilder
    implements Builder<SubscribeState, SubscribeStateBuilder> {
  _$SubscribeState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Packages> _packages;
  ListBuilder<Packages> get packages =>
      _$this._packages ??= new ListBuilder<Packages>();
  set packages(ListBuilder<Packages> packages) => _$this._packages = packages;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  InvoiceBuilder _invoice;
  InvoiceBuilder get invoice => _$this._invoice ??= new InvoiceBuilder();
  set invoice(InvoiceBuilder invoice) => _$this._invoice = invoice;

  SubscribeStateBuilder();

  SubscribeStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _packages = _$v.packages?.toBuilder();
      _success = _$v.success;
      _invoice = _$v.invoice?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscribeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubscribeState;
  }

  @override
  void update(void Function(SubscribeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscribeState build() {
    _$SubscribeState _$result;
    try {
      _$result = _$v ??
          new _$SubscribeState._(
              isLoading: isLoading,
              error: error,
              packages: packages.build(),
              success: success,
              invoice: _invoice?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'packages';
        packages.build();

        _$failedField = 'invoice';
        _invoice?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubscribeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
