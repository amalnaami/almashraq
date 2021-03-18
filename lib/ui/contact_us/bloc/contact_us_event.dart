library contact_us_event;

import 'package:built_value/built_value.dart';

part 'contact_us_event.g.dart';

abstract class ContactUsEvent {}

abstract class Post extends ContactUsEvent
    implements Built<Post, PostBuilder> {
  Post._();
  String get name;
  String get email;
  String get message;
  factory Post([updates(PostBuilder b)]) = _$Post;
}

abstract class ClearState extends ContactUsEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
