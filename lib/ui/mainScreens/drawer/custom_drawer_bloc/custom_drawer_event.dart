library custom_drawer_event;

import 'package:built_value/built_value.dart';

part 'custom_drawer_event.g.dart';

abstract class CustomDrawerEvent {}

abstract class GetProfileInfo extends CustomDrawerEvent
    implements Built<GetProfileInfo, GetProfileInfoBuilder> {
  GetProfileInfo._();
  factory GetProfileInfo([updates(GetProfileInfoBuilder b)]) = _$GetProfileInfo;
}

abstract class ClearState extends CustomDrawerEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class IsLogin extends CustomDrawerEvent
    implements Built<IsLogin, IsLoginBuilder> {
  IsLogin._();

  factory IsLogin([updates(IsLoginBuilder b)]) = _$IsLogin;
}
abstract class Logout extends CustomDrawerEvent
    implements Built<Logout, LogoutBuilder> {
  Logout._();
  factory Logout([updates(LogoutBuilder b)]) = _$Logout;
}