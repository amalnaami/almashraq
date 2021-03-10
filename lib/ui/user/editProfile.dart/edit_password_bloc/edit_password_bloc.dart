import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'edit_password_event.dart';
import 'edit_password_state.dart';

class EditPasswordBloc extends Bloc<EditPasswordEvent, EditPasswordState> {
  IRepository _repository;

  EditPasswordBloc(this._repository) : super(EditPasswordState.init());

  @override
  Stream<EditPasswordState> mapEventToState(
    EditPasswordEvent event,
  ) async* {
    if (event is SubmitRequest) {
      try {
        yield state.rebuild((b) => b..isLoading = true .. error = '');
        final data = await _repository.updatePassword(
            event.newPassword);
        print('SubmitRequest $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..success = true);
      } catch (e) {
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
