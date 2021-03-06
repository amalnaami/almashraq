import 'package:floor/floor.dart';
import 'package:maktabeh_app/data/db_helper/entites/category.dart';

@dao
abstract class CategoryDao {
  @insert
  Future<void> insertCategory(CategoryDB category);

  @Query('SELECT * FROM Cart ')
  Future<List<CategoryDB>> getCategories();
}
