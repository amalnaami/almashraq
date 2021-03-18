library about_us_event;

import 'package:built_value/built_value.dart';

part 'about_us_event.g.dart';

abstract class AboutUsEvent {}

abstract class GetAboutUs extends AboutUsEvent
    implements Built<GetAboutUs, GetAboutUsBuilder> {
  GetAboutUs._();
  factory GetAboutUs([updates(GetAboutUsBuilder b)]) = _$GetAboutUs;
}

abstract class ClearState extends AboutUsEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
