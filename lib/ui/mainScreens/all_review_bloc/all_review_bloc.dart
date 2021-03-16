import 'package:bloc/bloc.dart';
import 'package:maktabeh_app/data/repository/irepository.dart';

import 'all_review_event.dart';
import 'all_review_state.dart';

class AllReviewBloc extends Bloc<AllReviewEvent, AllReviewState> {
  IRepository _repository;

  AllReviewBloc(this._repository) : super(AllReviewState.init());

  @override
  Stream<AllReviewState> mapEventToState(
    AllReviewEvent event,
  ) async* {
    if (event is GetReviews) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..reviews.replace([])
          ..error = '');
        final ret = await _repository.getAllReviews();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..reviews.replace(ret)
          ..error = '');
      } catch (e) {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Something went wrong'
          ..reviews.replace([]));
      }

    } else if (event is ClearState) {
      yield state.rebuild((b) => b..error = '');
    } else if (event is GetIsLogin) {
      try {
        final result = await _repository.getIsLogin();
        yield state.rebuild((b) => b..isLogin = result);
      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b..error = "");
      }
    }
  }
}
