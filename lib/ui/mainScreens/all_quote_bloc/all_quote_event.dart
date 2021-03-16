library all_quote_event;

import 'package:built_value/built_value.dart';

part 'all_quote_event.g.dart';

abstract class AllQuoteEvent {}

abstract class GetQuotes extends AllQuoteEvent
    implements Built<GetQuotes, GetQuotesBuilder> {
  GetQuotes._();

  factory GetQuotes([updates(GetQuotesBuilder b)]) = _$GetQuotes;
}
abstract class GetIsLogin extends AllQuoteEvent
    implements Built<GetIsLogin, GetIsLoginBuilder> {
  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ClearState extends AllQuoteEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
