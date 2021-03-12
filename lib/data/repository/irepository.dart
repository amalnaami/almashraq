import 'package:maktabeh_app/model/all_books_model/books_details.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

abstract class IRepository {
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);
  Future<BuiltList<Category>> getCategories();
  Future<BuiltList<CountryModel>> getCountries();
  Future<BuiltList<BooksDetails>> getAllBooks();
  Future<bool> login(String userName, String password);
  Future<bool> forgetPassword(String email);
  Future<bool> updatePassword(String password);
  Future<void> insertCategories(List<int> categories);
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String country_code);

}
