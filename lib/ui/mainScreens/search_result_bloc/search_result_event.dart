library search_result_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

part 'search_result_event.g.dart';

abstract class SearchResultEvent {}

abstract class ClearState extends SearchResultEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class ClearError extends SearchResultEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class PostSearch extends SearchResultEvent
    implements Built<PostSearch, PostSearchBuilder> {
  PostSearch._();
  @nullable
  String get bookName;
  @nullable
  List<int> get sectionId;
  @nullable
  int get authorId;
  @nullable
  String get searchWord;
  factory PostSearch([updates(PostSearchBuilder b)]) = _$PostSearch;
}