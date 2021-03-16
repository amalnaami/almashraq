import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'all_quote_event.dart';
import 'all_quote_state.dart';

class AllQuoteBloc extends Bloc<AllQuoteEvent, AllQuoteState> {
  IRepository _repository;

  AllQuoteBloc(this._repository) : super(AllQuoteState.init());

  @override
  Stream<AllQuoteState> mapEventToState(
    AllQuoteEvent event,
  ) async* {
    if (event is GetQuotes) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..quotes.replace([])
          ..error = '');
        final ret = await _repository.getAllQuotes();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..quotes.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..quotes.replace([]));
      }

    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    } else if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);
      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b..error = "");
      }
    }
  }
}
