import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:maktabeh_app/core/error.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';

import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';

import 'package:maktabeh_app/model/login_model/login_model.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/model/user/user_model.dart';

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
      final response = await _dio.post('password/update',
          data: formData,
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

  @override
  Future<Quote> getTodayQuotes() async {
    try {
      final response = await _dio.get('quotes/quote-today');
      print('getTodayQuotes Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getTodayQuotes Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(Quote));
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
  Future<Review> getTodayReview() async {
    try {
      final response = await _dio.get('reviews/review-today');
      print('getTodayReview Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getTodayReview Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(Review));
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
  Future<BuiltList<Author>> getFamousAuthors() async {
    try {
      final response = await _dio.get('authors/most-notable');
      print('getFamousAuthor Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFamousAuthor Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(BuiltList, [const FullType(Author)]));
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
  Future<BuiltList<Book>> getAllBooks() async {
    try {
      final response = await _dio.get('books');
      print('getAllBooks Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAllBooks Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(BuiltList, [const FullType(Book)]));
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
  Future<BuiltList<Book>> getLatestBooks() async {
    try {
      final response = await _dio.get('books/latest');
      print('getLatestBooks Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getLatestBooks Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(BuiltList, [const FullType(Book)]));
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
  Future<BuiltList<Book>> getMostReviewedBooks() async {
    try {
      final response = await _dio.get('books/most-reviewed');
      print('getMostReviewedBooks Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getMostReviewedBooks Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(BuiltList, [const FullType(Book)]));
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
  Future<BuiltList<Book>> getFeaturedBooks(String token) async {
    try {
      final response = await _dio.get('books/featured',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      print('getFeaturedBooks Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFeaturedBooks Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(BuiltList, [const FullType(Book)]));
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
  Future<BuiltList<CountryModel>> getCountries(String language) async {
    try {
      final response = await _dio.get('countries',  options: Options(headers: {"Accept-Language":language}));
      print('getCountries Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getCountries Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(CountryModel),
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
  Future<UserModel> register(String name,String username, String email, String password,String tele,String gender,String country_code)async {

    try {
      print('register Response body ');
      final formData =
        {
          "name": name,
          "username": username,
          "email": email,
          "password": password,
          "tele": tele,
          "gender": gender,
          "country_code": country_code
        };

      final response = await _dio.post(
          'signup',
          data: formData,
      );
      print('register Response StatusCode ${response.statusCode}');
      print('register Response body  ${response.data}');
      if (response.statusCode == 201) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
                UserModel
            ));
        print("implement register status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
  // @override
  // Future<BuiltList<BooksDetails>> getAllBooks(String language) async {
  //   try {
  //     final response = await _dio.get('books',  options: Options(headers: {"Accept-Language":language}));
  //     print('getAllBooks Response StatusCode ${response.statusCode}');
  //     if (response.statusCode == 200) {
  //       print('getAllBooks Response body  ${response.data}');
  //
  //       final ret = serializers.deserialize(json.decode(response.data)['data'],
  //           specifiedType: FullType(
  //             BuiltList,
  //             [
  //               const FullType(BooksDetails),
  //             ],
  //           ));
  //       return ret;
  //     } else {
  //       throw NetworkException();
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //     throw NetworkException();
  //   }
  // }


}
