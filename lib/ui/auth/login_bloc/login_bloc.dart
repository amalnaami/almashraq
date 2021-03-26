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
          ..error = '${e.toString()}');
      }
    }

    if (event is SocialLogin) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.socialMediaLogin(event.acessToken, event.typeSocial);
        print('Login $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..successSocail = true);
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = '${e.toString()}');
      }
    }

    if (event is ClearState) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ''
        ..successLogin = false);
    }
    if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);

      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b
          ..error = ""
        );
      }
    }
  }
}
