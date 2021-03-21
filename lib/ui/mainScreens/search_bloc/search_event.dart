library search_event;

import 'package:built_value/built_value.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}

abstract class GetCategories extends SearchEvent
    implements Built<GetCategories, GetCategoriesBuilder> {
  GetCategories._();

  factory GetCategories([updates(GetCategoriesBuilder b)]) = _$GetCategories;
}
abstract class ClearState extends SearchEvent
    implements Built<ClearState, ClearStateBuilder> {
  ClearState._();

  factory ClearState([updates(ClearStateBuilder b)]) = _$ClearState;
}
abstract class ClearError extends SearchEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class PostSearch extends SearchEvent
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
abstract class GetAuthor extends SearchEvent
    implements Built<GetAuthor, GetAuthorBuilder> {
  GetAuthor._();

  factory GetAuthor([updates(GetAuthorBuilder b)]) = _$GetAuthor;
}