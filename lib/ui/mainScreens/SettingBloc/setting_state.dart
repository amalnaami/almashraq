library setting_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';

part 'setting_state.g.dart';

abstract class SettingState implements Built<SettingState, SettingStateBuilder> {
  
  bool get isLoading;
  int get lang;
  bool get isLogin;
  bool get logout;
  bool get success;
  String get error;
  ProfileModel get profileUser;
  UserData get data;
  BuiltList<CountryModel> get country;

  BuiltList<ReviewQuoteUserModel> get quoteUser;
  BuiltList<ReviewQuoteUserModel> get reviewUser;
  SettingState._();

  //put $ here
  factory SettingState([updates(SettingStateBuilder b)]) = _$SettingState;

  factory SettingState.init() {
    return SettingState((b) => b
      ..isLoading = false
      ..lang = 1
      ..isLogin = false
      ..logout = false
      ..success = false
      ..error = ""
        ..profileUser=null
      ..data=null
      ..country.replace([])
        ..quoteUser.replace([])
        ..reviewUser.replace([])
    );
  }
}