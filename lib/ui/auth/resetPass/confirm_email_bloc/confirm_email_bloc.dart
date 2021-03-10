import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'confirm_email_event.dart';
import 'confirm_email_state.dart';

class ConfirmEmailBloc extends Bloc<ConfirmEmailEvent, ConfirmEmailState> {
  IRepository _repository;

  ConfirmEmailBloc(this._repository) : super(ConfirmEmailState.init());

  @override
  Stream<ConfirmEmailState> mapEventToState(
    ConfirmEmailEvent event,
  ) async* {
    if (event is SubmitEmail) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.forgetPassword(
            event.email);
        print('SubmitEmail $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..success = true);
      } catch (e) {
        print('SOMETHING WENT WRONG');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong');
      }
    }

    if (event is ClearState) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ''
        ..success = false);
    }
  }
}
