library notifications_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

part 'notifications_event.g.dart';

abstract class NotificationsEvent {}

abstract class GetNotifications extends NotificationsEvent
    implements Built<GetNotifications, GetNotificationsBuilder> {
  GetNotifications._();

  factory GetNotifications([updates(GetNotificationsBuilder b)]) = _$GetNotifications;
}

abstract class ClearError extends NotificationsEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}