library notifications_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/notifications/notifications.dart';

part 'notifications_state.g.dart';

abstract class NotificationsState implements Built<NotificationsState, NotificationsStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Notifications> get notifications;


  NotificationsState._();

  //put $ here
  factory NotificationsState([updates(NotificationsStateBuilder b)]) = _$NotificationsState;

  factory NotificationsState.init() {
    return NotificationsState((b) => b
      ..isLoading = false
      ..error = ''
      ..notifications.replace([])
    );
  }
}
