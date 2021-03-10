import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:maktabeh_app/core/error.dart';

import 'package:maktabeh_app/model/category/category.dart';

import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';

import 'ihttpe_helper.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
  }

  @override
  Future<bool> forgetPassword(String email) async {
    try {
      final formData = {'email': email};
      final response = await _dio.post('password/email', data: formData);
      print('forgetPassword Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<Category>> getCategories() async {
    try {
      final response = await _dio.get('sections?with_books=0');
      print('getCategories Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getCategories Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Category),
              ],
            ));
        return ret;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<LoginModel> login(String userName, String password) async {
    try {
      final formData = {"username": userName, "password": password};
      final response = await _dio.post('login', data: formData);
      print('login Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(LoginModel));
        return ret;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> updatePassword(String password, String token) async {
    try {
      final formData = {
        'password': password,
        'password_confirmation': password
      };
      final response = await _dio.post('password/update',data: formData,
          options: Options(headers: {"Authorization": 'Bearer $token'}));
      print('updatePassword Response StatusCode ${response.statusCode}');
      if (response.statusCode == 201) {
        print('updatePassword Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(User));
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
}
