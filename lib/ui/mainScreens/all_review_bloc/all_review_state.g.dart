// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_review_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllReviewState extends AllReviewState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Review> reviews;
  @override
  final bool isLogin;

  factory _$AllReviewState([void Function(AllReviewStateBuilder) updates]) =>
      (new AllReviewStateBuilder()..update(updates)).build();

  _$AllReviewState._({this.isLoading, this.error, this.reviews, this.isLogin})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AllReviewState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('AllReviewState', 'error');
    }
    if (reviews == null) {
      throw new BuiltValueNullFieldError('AllReviewState', 'reviews');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AllReviewState', 'isLogin');
    }
  }

  @override
  AllReviewState rebuild(void Function(AllReviewStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllReviewStateBuilder toBuilder() =>
      new AllReviewStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllReviewState &&
        isLoading == other.isLoading &&
        error == other.error &&
        reviews == other.reviews &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), error.hashCode), reviews.hashCode),
        isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllReviewState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('reviews', reviews)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class AllReviewStateBuilder
    implements Builder<AllReviewState, AllReviewStateBuilder> {
  _$AllReviewState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Review> _reviews;
  ListBuilder<Review> get reviews =>
      _$this._reviews ??= new ListBuilder<Review>();
  set reviews(ListBuilder<Review> reviews) => _$this._reviews = reviews;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  AllReviewStateBuilder();

  AllReviewStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _reviews = _$v.reviews?.toBuilder();
      _isLogin = _$v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllReviewState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllReviewState;
  }

  @override
  void update(void Function(AllReviewStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllReviewState build() {
    _$AllReviewState _$result;
    try {
      _$result = _$v ??
          new _$AllReviewState._(
              isLoading: isLoading,
              error: error,
              reviews: reviews.build(),
              isLogin: isLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviews';
        reviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllReviewState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
