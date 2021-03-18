import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'add_rate_event.dart';
import 'add_rate_state.dart';

class AddRateBloc extends Bloc<AddRateEvent, AddRateState> {
  IRepository _repository;


  AddRateBloc(this._repository) : super(AddRateState.init());

  @override
  Stream<AddRateState> mapEventToState(
    AddRateEvent event,
  ) async* {
    if (event is AddRate) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ''
          ..success = false);
        final res =
            await _repository.rateTheApp(event.rate, event.note);
        yield state.rebuild((b) => b
          ..isLoading = false..success = res);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false
          ..success = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = ''..success = false..isLoading = false);
    } else if(event is IsLogin) {
      final res = await _repository.getIsLogin();
      yield state.rebuild((b) => b..isLogin = res);
    }
  }
}
