import 'package:floor/floor.dart';

@entity
class Category {
  @PrimaryKey(autoGenerate: true)
  int id;
  int categoryId;


  Category({this.id, this.categoryId});
}
