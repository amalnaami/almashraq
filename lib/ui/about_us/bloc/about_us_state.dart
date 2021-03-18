library about_us_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';

part 'about_us_state.g.dart';

abstract class AboutUsState implements Built<AboutUsState, AboutUsStateBuilder> {
  bool get isLoading;
  String get error;
  @nullable
  AboutUs get aboutUs;

  AboutUsState._();

  //put $ here
  factory AboutUsState([updates(AboutUsStateBuilder b)]) = _$AboutUsState;

  factory AboutUsState.init() {
    return AboutUsState((b) => b
      ..isLoading = false
      ..error = ''
      ..aboutUs = null
    );
  }
}
