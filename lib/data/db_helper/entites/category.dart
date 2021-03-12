import 'package:floor/floor.dart';

@entity
class CategoryDB {
  @PrimaryKey(autoGenerate: true)
  int id;
  int categoryId;


  CategoryDB({this.id, this.categoryId});
}
