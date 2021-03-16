library all_review_event;

import 'package:built_value/built_value.dart';

part 'all_review_event.g.dart';

abstract class AllReviewEvent {}

abstract class GetReviews extends AllReviewEvent
    implements Built<GetReviews, GetReviewsBuilder> {
  GetReviews._();

  factory GetReviews([updates(GetReviewsBuilder b)]) = _$GetReviews;
}
abstract class GetIsLogin extends AllReviewEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends AllReviewEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
