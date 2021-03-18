library add_rate_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/rate/rate.dart';

part 'add_rate_state.g.dart';

abstract class AddRateState implements Built<AddRateState, AddRateStateBuilder> {
  bool get isLoading;
  bool get isLogin;
  String get error;
  bool get success;

  AddRateState._();

  //put $ here
  factory AddRateState([updates(AddRateStateBuilder b)]) = _$AddRateState;

  factory AddRateState.init() {
    return AddRateState((b) => b
      ..isLoading = false
      ..error = ''
      ..isLogin = false
      ..success = false
    );
  }
}
