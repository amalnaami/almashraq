import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'about_us_event.dart';
import 'about_us_state.dart';

class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  IRepository _repository;

  AboutUsBloc(this._repository) : super(AboutUsState.init());

  @override
  Stream<AboutUsState> mapEventToState(
    AboutUsEvent event,
  ) async* {
    if (event is GetAboutUs) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = '');
        final res =
            await _repository.getAboutUs();
        yield state.rebuild((b) => b
          ..isLoading = false..aboutUs.replace(res));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLoading = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    }
  }
}
