import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'rate_event.dart';
import 'rate_state.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  IRepository _repository;


  RateBloc(this._repository) : super(RateState.init());

  @override
  Stream<RateState> mapEventToState(
    RateEvent event,
  ) async* {
    if (event is GetRates) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ''
          ..rates = null);
        final res =
            await _repository.getAppRate();
        yield state.rebuild((b) => b
          ..isLoading = false..rates.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..rates = null);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    } else if(event is IsLogin) {
      final res = await _repository.getIsLogin();
      yield state.rebuild((b) => b..isLogin = res);
    }
  }
}
