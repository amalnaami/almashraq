library notifications;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';

part 'notifications.g.dart';

abstract class Notifications implements Built<Notifications, NotificationsBuilder> {
  @nullable
  int get id;
  @nullable
  String get title;
  @nullable
  String get body;
  @nullable
  String get image;

  Notifications._();

  factory Notifications([updates(NotificationsBuilder b)]) = _$Notifications;

  String toJson() {
    return json.encode(serializers.serializeWith(Notifications.serializer, this));
  }

  static Notifications fromJson(String jsonString) {
    return serializers.deserializeWith(
        Notifications.serializer, json.decode(jsonString));
  }

  static Serializer<Notifications> get serializer => _$notificationsSerializer;
}
