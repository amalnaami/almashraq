library rate_event;

import 'package:built_value/built_value.dart';

part 'rate_event.g.dart';

abstract class RateEvent {}

abstract class GetRates extends RateEvent
    implements Built<GetRates, GetRatesBuilder> {
  GetRates._();
  factory GetRates([updates(GetRatesBuilder b)]) = _$GetRates;
}

abstract class ClearState extends RateEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class IsLogin extends RateEvent
    implements Built<IsLogin, IsLoginBuilder> {
  IsLogin._();

  factory IsLogin([updates(IsLoginBuilder b)]) = _$IsLogin;
}