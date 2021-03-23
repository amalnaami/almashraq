library subscribe_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/invoice/invoice.dart';
import 'package:maktabeh_app/model/packages/packages.dart';
import 'package:built_collection/built_collection.dart';

part 'subscribe_state.g.dart';

abstract class SubscribeState implements Built<SubscribeState, SubscribeStateBuilder> {
  bool get isLoading;

  String get error;

  BuiltList<Packages> get packages;

  bool get success;
  @nullable
  Invoice get invoice;

  SubscribeState._();

  //put $ here
  factory SubscribeState([updates(SubscribeStateBuilder b)]) = _$SubscribeState;

  factory SubscribeState.init() {
    return SubscribeState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false
      ..packages.replace([])
      ..invoice = null);
  }
}
