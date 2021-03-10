import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:built_collection/built_collection.dart';

abstract class IHttpHelper {
  Future<BuiltList<Category>> getCategories();
  Future<LoginModel> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password, String token);

}
