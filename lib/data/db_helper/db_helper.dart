import 'package:maktabeh_app/data/db_helper/db/database.dart';
import 'package:maktabeh_app/data/db_helper/entites/category.dart';

import 'idp_helper.dart';

class DbHelper implements IDbHelper {
  @override
  Future<AppDatabase> _getInstDB() async {
    return await $FloorAppDatabase.databaseBuilder('almashreqDB.db').build();
  }
  @override
  Future<List<Category>> getCategories() async {
    try {
      return await (await _getInstDB()).categoryDao.getCategories();
    } catch (e) {
    print('getCategories db e is $e');
    throw Exception(e.toString());
    }
  }

  @override
  Future<void> insertCategory(List<int> categories) async {
    try {
      for(int id in categories) {
        await (await _getInstDB()).categoryDao.insertCategory(Category(categoryId: id));
      }
    } catch (e) {
    print('insertCategory db e is $e');
    throw Exception(e.toString());
    }
  }
}
