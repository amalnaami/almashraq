library contact_us_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';

part 'contact_us_state.g.dart';

abstract class ContactUsState implements Built<ContactUsState, ContactUsStateBuilder> {
  bool get isLoading;
  String get error;
  bool get success;

  ContactUsState._();

  //put $ here
  factory ContactUsState([updates(ContactUsStateBuilder b)]) = _$ContactUsState;

  factory ContactUsState.init() {
    return ContactUsState((b) => b
      ..isLoading = false
      ..error = ''
      ..success = false
    );
  }
}
