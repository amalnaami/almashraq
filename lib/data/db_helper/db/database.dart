import 'dart:async';

import 'package:floor/floor.dart';
import 'package:maktabeh_app/data/db_helper/dao/cartegory_dao.dart';
import 'package:maktabeh_app/data/db_helper/entites/category.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart'; // the generated code will be there

@Database(
    version: 1, entities: [CategoryDB])
abstract class AppDatabase extends FloorDatabase {

  CategoryDao get categoryDao;


}
