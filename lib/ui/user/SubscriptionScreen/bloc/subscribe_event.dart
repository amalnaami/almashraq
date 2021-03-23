library subscribe_event;

import 'package:built_value/built_value.dart';

part 'subscribe_event.g.dart';

abstract class SubscribeEvent {}

abstract class GetPackages extends SubscribeEvent
    implements Built<GetPackages, GetPackagesBuilder> {
  GetPackages._();

  factory GetPackages([updates(GetPackagesBuilder b)]) = _$GetPackages;
}

abstract class ClearError extends SubscribeEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class ClearSuccess extends SubscribeEvent
    implements Built<ClearSuccess, ClearSuccessBuilder> {
  ClearSuccess._();

  factory ClearSuccess([updates(ClearSuccessBuilder b)]) = _$ClearSuccess;
}
abstract class Subscribe extends SubscribeEvent
    implements Built<Subscribe, SubscribeBuilder> {
  Subscribe._();
  String get id;
  String get type;
  factory Subscribe([updates(SubscribeBuilder b)]) = _$Subscribe;
}