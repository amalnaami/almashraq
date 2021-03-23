import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'subscribe_event.dart';
import 'subscribe_state.dart';

class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {
  IRepository _repository;

  SubscribeBloc(this._repository) : super(SubscribeState.init());

  @override
  Stream<SubscribeState> mapEventToState(
    SubscribeEvent event,
  ) async* {
    if (event is GetPackages) {
      try {
        yield state.rebuild((b) => b..isLoading = true .. error = '');
        final data = await _repository.getPackages();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..packages.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..packages.replace([]));
      }
    }
    else if (event is ClearError) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = '');
    } else if (event is ClearSuccess) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..success = false);
    } else if(event is Subscribe) {
      try {
        yield state.rebuild((b) => b..isLoading = true .. error = '');
        final data = await _repository.subscribe(event.type, event.id);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..success = true
          ..invoice.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..success = false);
      }
    }
  }
}
