import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_event.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  IRepository _repository;

  SignUpBloc(this._repository) : super(SignUpState.init());

  @override
  Stream<SignUpState> mapEventToState(
      SignUpEvent event,
      ) async* {
    if (event is ClearState) {
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ''
        ..success = false);
    }
    if (event is GetCountry) {
      try {
        yield state.rebuild((b) => b..isLoading = true ..error = '');
        final data = await _repository.getCountries();
        print('GetCategories $data');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ''
          ..country.replace(data));
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = '${e.toString()}');
      }
    }
    if (event is SignUp) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..successSignup = false
          ..user=null
        );

        final date = await _repository.register(event.name, event.username, event.email, event.password, event.tele, event.gender, event.country_code);
        print('TryRegister Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..successSignup = true
          ..user.replace(date)
        );
      } catch (e) {
        print('TryRegister Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..successSignup = false
          ..user=null
        );
      }
    }

  }
}
