import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

import 'notifications_event.dart';
import 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  IRepository _repository;

  NotificationsBloc(this._repository) : super(NotificationsState.init());

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    if (event is GetNotifications) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..notifications.replace([])
          ..error = '');
        final ret = await _repository.getNotifications();
          yield state.rebuild((b) => b
            ..isLoading = false
            ..notifications.replace(ret)
            ..error = '');

      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..notifications.replace([]));
      }
    } else if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
  }
}
