import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IRepository _repository;

  LoginBloc(this._repository) : super(LoginState.init());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is Login) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.login(
            event.userName, event.password);
        print('Login $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..successLogin = true);
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
        ..successLogin = false);
    }
  }
}
