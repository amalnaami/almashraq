library all_review_state;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';

part 'all_review_state.g.dart';

abstract class AllReviewState implements Built<AllReviewState, AllReviewStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Review> get reviews;
  bool get isLogin;


  AllReviewState._();

  //put $ here
  factory AllReviewState([updates(AllReviewStateBuilder b)]) = _$AllReviewState;

  factory AllReviewState.init() {
    return AllReviewState((b) => b
      ..isLoading = false
      ..error = ''
      ..reviews.replace([])
      ..isLogin = false
    );
  }
}
