import 'package:maktabeh_app/data/db_helper/db/database.dart';
import 'package:maktabeh_app/data/db_helper/entites/category.dart';

abstract class IDbHelper {
  Future<AppDatabase> _getInstDB();

  Future<void> insertCategory(List<int> categories);

  Future<List<CategoryDB>> getCategories();

}
