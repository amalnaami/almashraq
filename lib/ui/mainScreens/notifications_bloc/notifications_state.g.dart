// GENERATED CODE - DO NOT MODIFY BY HAND

part of notifications_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationsState extends NotificationsState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<Notifications> notifications;

  factory _$NotificationsState(
          [void Function(NotificationsStateBuilder) updates]) =>
      (new NotificationsStateBuilder()..update(updates)).build();

  _$NotificationsState._({this.isLoading, this.error, this.notifications})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('NotificationsState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('NotificationsState', 'error');
    }
    if (notifications == null) {
      throw new BuiltValueNullFieldError('NotificationsState', 'notifications');
    }
  }

  @override
  NotificationsState rebuild(
          void Function(NotificationsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsStateBuilder toBuilder() =>
      new NotificationsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsState &&
        isLoading == other.isLoading &&
        error == other.error &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isLoading.hashCode), error.hashCode),
        notifications.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('notifications', notifications))
        .toString();
  }
}

class NotificationsStateBuilder
    implements Builder<NotificationsState, NotificationsStateBuilder> {
  _$NotificationsState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<Notifications> _notifications;
  ListBuilder<Notifications> get notifications =>
      _$this._notifications ??= new ListBuilder<Notifications>();
  set notifications(ListBuilder<Notifications> notifications) =>
      _$this._notifications = notifications;

  NotificationsStateBuilder();

  NotificationsStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _notifications = _$v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationsState;
  }

  @override
  void update(void Function(NotificationsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationsState build() {
    _$NotificationsState _$result;
    try {
      _$result = _$v ??
          new _$NotificationsState._(
              isLoading: isLoading,
              error: error,
              notifications: notifications.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'notifications';
        notifications.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
