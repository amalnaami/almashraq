import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'contact_us_event.dart';
import 'contact_us_state.dart';

class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  IRepository _repository;
  int currentPage = 1;
  int lastPage = 2;

  ContactUsBloc(this._repository) : super(ContactUsState.init());

  @override
  Stream<ContactUsState> mapEventToState(
    ContactUsEvent event,
  ) async* {
    if (event is Post) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = '');
        final res =
            await _repository.contactUs(event.name, event.email, event.message);
        yield state.rebuild((b) => b
          ..isLoading = false .. success = res);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = ''..success = false);
    }
  }
}
