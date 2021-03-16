library all_quote_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/quote/quote.dart';

part 'all_quote_state.g.dart';

abstract class AllQuoteState implements Built<AllQuoteState, AllQuoteStateBuilder> {
  bool get isLoading;
  String get error;
  BuiltList<Quote> get quotes;
  bool get isLogin;


  AllQuoteState._();

  //put $ here
  factory AllQuoteState([updates(AllQuoteStateBuilder b)]) = _$AllQuoteState;

  factory AllQuoteState.init() {
    return AllQuoteState((b) => b
      ..isLoading = false
      ..error = ''
      ..quotes.replace([])
      ..isLogin = false
    );
  }
}
