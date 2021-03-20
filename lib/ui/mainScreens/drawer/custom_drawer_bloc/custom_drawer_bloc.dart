import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'custom_drawer_event.dart';
import 'custom_drawer_state.dart';

class CustomDrawerBloc extends Bloc<CustomDrawerEvent, CustomDrawerState> {
  IRepository _repository;

  CustomDrawerBloc(this._repository) : super(CustomDrawerState.init());


  @override
  Stream<CustomDrawerState> mapEventToState(
    CustomDrawerEvent event,
  ) async* {
    print('event issss $event');
    if (event is GetProfileInfo) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = '');
        final email = await _repository.getEmail();
        final country = await _repository.getCountry();
        final image = await _repository.getImage();
        final name = await _repository.getName();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isLogin = true
          ..email = email
          ..country = country
          ..image = image == null ? 'https://th.bing.com/th/id/OIP.xo-BCC1ZKFpLL65D93eHcgHaGe?pid=ImgDet&rs=1' : image
          ..name = name);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = 'something went wrong'
          ..isLogin = false
          ..isLoading = false);
      }
    } else if (event is ClearState) {
      yield state.rebuild((b) => b
        ..error = ''
        ..isLoading = false..logout = false..isLogin = false);
    } else if (event is IsLogin) {
      final res = await _repository.getIsLogin();
      print(res);
      state.rebuild((b) => b..isLogin = res);
      if (res) {
        try {
          yield state.rebuild((b) => b
            ..isLoading = true
            ..error = '');
          final email = await _repository.getEmail();
          final country = await _repository.getCountry();
          final image = await _repository.getImage();
          final name = await _repository.getName();
          yield state.rebuild((b) => b
            ..isLoading = false
            ..isLogin = true
            ..email = email
            ..country = country
            ..image = image == null ? 'https://th.bing.com/th/id/OIP.xo-BCC1ZKFpLL65D93eHcgHaGe?pid=ImgDet&rs=1' : image
            ..name = name);
        } catch (e) {
          yield state.rebuild((b) => b
            ..error = 'something went wrong'
            ..isLogin = false
            ..isLoading = false);
        }
      }
    } else if(event is Logout) {
      try{
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = '');
        final res = await _repository.logout();
        print('RES IS $res');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isLogin = false
          ..logout = true
          ..error = '');
      }catch(e) {
        print('WRF');
      }

    }
  }
}
