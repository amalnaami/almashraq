// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_quote_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllQuoteState extends AllQuoteState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Quote> quotes;
  @override
  final bool isLogin;

  factory _$AllQuoteState([void Function(AllQuoteStateBuilder) updates]) =>
      (new AllQuoteStateBuilder()..update(updates)).build();

  _$AllQuoteState._({this.isLoading, this.error, this.quotes, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AllQuoteState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AllQuoteState', 'error');
    }
    if (quotes == null) {
      throw new BuiltValueNullFieldError('AllQuoteState', 'quotes');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AllQuoteState', 'isLogin');
    }
  }

  @override
  AllQuoteState rebuild(void Function(AllQuoteStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllQuoteStateBuilder toBuilder() => new AllQuoteStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllQuoteState &&
        isLoading == other.isLoading &&
        error == other.error &&
        quotes == other.quotes &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), quotes.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllQuoteState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('quotes', quotes)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class AllQuoteStateBuilder
    implements Builder<AllQuoteState, AllQuoteStateBuilder> {
  _$AllQuoteState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Quote> _quotes;
  ListBuilder<Quote> get quotes => _$this._quotes ??= new ListBuilder<Quote>();
  set quotes(ListBuilder<Quote> quotes) => _$this._quotes = quotes;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  AllQuoteStateBuilder();

  AllQuoteStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _quotes = _$v.quotes?.toBuilder();
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllQuoteState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllQuoteState;
  }

  @override
  void update(void Function(AllQuoteStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllQuoteState build() {
    _$AllQuoteState _$result;
    try {
      _$result = _$v ??
          new _$AllQuoteState._(
              isLoading: isLoading,
              error: error,
              quotes: quotes.build(),
              isLogin: isLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'quotes';
        quotes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllQuoteState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
