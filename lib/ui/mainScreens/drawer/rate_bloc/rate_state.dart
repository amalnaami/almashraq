library rate_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/rate/rate.dart';

part 'rate_state.g.dart';

abstract class RateState implements Built<RateState, RateStateBuilder> {
  bool get isLoading;
  bool get isLogin;
  String get error;
  @nullable
  AppRate get rates;

  RateState._();

  //put $ here
  factory RateState([updates(RateStateBuilder b)]) = _$RateState;

  factory RateState.init() {
    return RateState((b) => b
      ..isLoading = false
      ..error = ''
      ..rates = null
      ..isLogin = false
    );
  }
}
