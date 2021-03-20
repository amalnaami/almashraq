library custom_drawer_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/rate/rate.dart';

part 'custom_drawer_state.g.dart';

abstract class CustomDrawerState
    implements Built<CustomDrawerState, CustomDrawerStateBuilder> {
  bool get isLoading;

  bool get isLogin;

  bool get logout;

  String get error;

  @nullable
  String get image;

  String get name;

  String get country;

  String get email;

  CustomDrawerState._();

  //put $ here
  factory CustomDrawerState([updates(CustomDrawerStateBuilder b)]) =
      _$CustomDrawerState;

  factory CustomDrawerState.init() {
    return CustomDrawerState((b) => b
      ..isLoading = false
      ..error = ''
      ..isLogin = false
      ..logout = false
      ..name = ''
      ..email = ''
      ..country = ''
      ..image = '');
  }
}
