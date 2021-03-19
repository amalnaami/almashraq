import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:maktabeh_app/core/error.dart';
import 'package:maktabeh_app/model/about_us/about_us.dart';
import 'package:maktabeh_app/model/app_rate/app_rate.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/base_book.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/book_by_category/book_by_category.dart';

import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';

import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/model/review/review.dart';
import 'package:maktabeh_app/model/review_quote_user_model/review_quote_user_model.dart';
import 'package:maktabeh_app/model/serializer/serializer.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/model/user/user_model.dart';
import 'package:path/path.dart';
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
  Future<BuiltList<Category>> getCategories(String language) async {
    try {
      final response = await _dio.get('sections?with_books=0',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<UserModel> login(
      String userName, String password, String firebaseToken) async {
    try {
      final formData = {
        "username": userName,
        "password": password,
        "device_token": firebaseToken
      };
      final response = await _dio.post('login', data: formData);
      print('login Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final ret = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(UserModel));
        return ret;
      } else {
        throw NetworkException(code: response.statusCode);
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException(error: e.toString());
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
  Future<Quote> getTodayQuotes(String language) async {
    try {
      final response = await _dio.get('quotes/quote-today',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<Review> getTodayReview(String language) async {
    try {
      final response = await _dio.get('reviews/review-today',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<BuiltList<Author>> getFamousAuthors(String language) async {
    try {
      final response = await _dio.get('authors/most-notable',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<BuiltList<Book>> getAllBooks(String language) async {
    try {
      final response = await _dio.get('books',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<BuiltList<Book>> getLatestBooks(String language) async {
    try {
      final response = await _dio.get('books/latest',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<BuiltList<Book>> getMostReviewedBooks(String language) async {
    try {
      final response = await _dio.get('books/most-reviewed',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<BuiltList<Book>> getFeaturedBooks(
      String token, String language) async {
    try {
      final response = await _dio.get('books/featured',
          options: Options(headers: {
            'Authorization': 'Bearer $token',
            "Accept-Language": language
          }));
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
      final response = await _dio.get('countries',
          options: Options(headers: {"Accept-Language": language}));
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
  Future<UserModel> register(
      String name,
      String username,
      String email,
      String password,
      String tele,
      String gender,
      String country_code,
      File image,
      String firebaseToken) async {
    try {
      print('register Response body ');
      final formData = FormData.fromMap({
        "name": name,
        "username": username,
        "email": email,
        "password": password,
        "tele": tele,
        "gender": gender,
        "country_code": country_code,
        "device_token": firebaseToken
      });
      if (image.path.isNotEmpty) {
        formData.files.add(MapEntry(
          "image",
          await MultipartFile.fromFile(
            image.path,
            filename: basename(image.path),
          ),
        ));
      }
      final response = await _dio.post(
        'signup',
        data: formData,
      );
      print('register Response StatusCode ${response.statusCode}');
      print('register Response body  ${response.data}');
      if (response.statusCode == 201) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(UserModel));
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

  @override
  Future<bool> insertCategories(List<int> categories, String token) async {
    try {
      print('INSERTING');
      print(token);
      print(categories);
      final response = await _dio.post('user/sections',
          data: {'sections': categories},
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      print('insertCategories Response StatusCode ${response.statusCode}');
      if (response.statusCode == 201) {
        // response.data['status']
        print('insertCategories Response body  ${response.data}');
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
  Future<BaseBook> getAllBookNextPage(int page, String language) async {
    try {
      final response = await _dio.get('books?page=$page',
          options: Options(headers: {"Accept-Language": language}));
      print('getAllBookNextPage Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAllBookNextPage Response body  ${response.data}');
        final books = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(BaseBook));
        return books;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BookByCategoryModel> getBooksByCategory(
      int page, int categoryId, String language) async {
    try {
      final response = await _dio.get(
          'sections/$categoryId?with_books=1&page=$page',
          options: Options(headers: {"Accept-Language": language}));
      print('getBooksByCategory Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getBooksByCategory Response body  ${response.data}');
        final books = serializers.deserialize(
            json.decode(response.data)['data'],
            specifiedType: FullType(BookByCategoryModel));
        print(books);
        return books;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BookByCategoryModel> getSectionByBook(
      int withBooks, int sectionId, String language) async {
    try {
      final response = await _dio.get(
          'sections/$sectionId?with_books=$withBooks',
          options: Options(headers: {"Accept-Language": language}));
      print('getBooksByCategory Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getBooksByCategory Response body  ${response.data}');
        final books = serializers.deserialize(
            json.decode(response.data)['data'],
            specifiedType: FullType(BookByCategoryModel));
        print(books);
        return books;
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

  @override
  Future<BuiltList<Review>> getReviewByBook(int bookId, String language) async {
    try {
      final response = await _dio.get('reviews/by_book/$bookId',
          options: Options(headers: {"Accept-Language": language}));
      print('getReviewByBook Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getCountries Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Review),
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
  Future<BuiltList<Quote>> getQuotesByBook(int bookId, String language) async {
    try {
      final response = await _dio.get('quotes/by_book/$bookId',
          options: Options(headers: {"Accept-Language": language}));
      print('getReviewByBook Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getCountries Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Quote),
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
  Future<BuiltList<Author>> getAllAuthor(String language) async {
    try {
      final response = await _dio.get('authors',
          options: Options(headers: {"Accept-Language": language}));
      print('getAllAuthor Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAllAuthor Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Author),
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
  Future<BaseBook> getBooksForAuthor(int page, int id, String language) async {
    try {
      final response = await _dio.get('books/author/$id?page=$page',
          options: Options(headers: {"Accept-Language": language}));
      print('getBooksForAuthor Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getBooksForAuthor Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(BaseBook));
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
  Future<BuiltList<Review>> getAllReviews(String language) async {
    try {
      final response = await _dio.get('reviews',
          options: Options(headers: {"Accept-Language": language}));
      print('getAllReviews Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAllReviews Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Review),
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
  Future<BuiltList<Quote>> getAllQuotes(String language) async {
    try {
      final response = await _dio.get('quotes',
          options: Options(headers: {"Accept-Language": language}));
      print('getAllQuotes Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAllQuotes Response body  ${response.data}');
        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Quote),
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
  Future<ProfileModel> getUserProfile(String token, String language) async {
    try {
      final response = await _dio.get('user',
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));

      if (response.statusCode == 200) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(ProfileModel));
        return baseResponse;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<Book>> getFavorite(String token, String language) async {
    try {
      final response = await _dio.get('user/books',
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));
      print('getFavorite Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFavorite Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(Book),
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
  Future<BuiltList<ReviewQuoteUserModel>> getUserReviews(
      String token, String language) async {
    try {
      final response = await _dio.get('user/reviews',
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));
      print('getFavorite Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFavorite Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(ReviewQuoteUserModel),
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
  Future<bool> addQuote(String text, int bookId, String token) async {
    try {
      final formData = {
        'quote': {
          'text': text,
        }
      };
      final response = await _dio.post('books/$bookId/quote',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer $token'}));
      print('rateTheApp Response StatusCode ${response.statusCode}');
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
  Future<bool> addReview(
      String text, int rating, int bookId, String token) async {
    try {
      final formData = {
        'review': {'text': text, 'rating': rating}
      };
      final response = await _dio.post('books/$bookId/review',
          data: formData,
          options: Options(headers: {
            "Authorization": 'Bearer $token',
          }));

      if (response.statusCode == 200) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<ReviewQuoteUserModel>> getUserQuote(
      String token, String language) async {
    try {
      final response = await _dio.get('user/quotes',
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));
      print('getFavorite Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFavorite Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(ReviewQuoteUserModel),
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
  Future<bool> addToFavorite(String token, int bookId, String language) async {
    try {
      final response = await _dio.post('user/books',
          data: {'book_id': bookId},
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));

      if (response.statusCode == 201) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<bool> removeFromFavorite(
      String token, int bookId, String language) async {
    try {
      final response = await _dio.delete('user/books/$bookId',
          options: Options(headers: {
            "Authorization": 'Bearer $token',
            "Accept-Language": language
          }));

      if (response.statusCode == 204) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<AboutUs> getAboutUs(String language) async {
    try {
      final response = await _dio.get('about',
          options: Options(headers: {"Accept-Language": language}));

      if (response.statusCode == 200) {
        final baseResponse =
            serializers.deserialize(json.decode(response.data)['data'],
                specifiedType: FullType(
                  AboutUs,
                ));
        print(baseResponse);
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<bool> contactUs(String name, String email, String message) async {
    try {
      final formData = {
        'contact': {'name': name, 'email': email, 'message': message}
      };
      final response = await _dio.post('contact_us', data: formData);

      if (response.statusCode == 201) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print('Error: ${e.toString()} \n');
      throw NetworkException();
    }
  }

  @override
  Future<AppRate> getAppRate() async {
    try {
      final response = await _dio.get('rate_app');
      print('getAppRate Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getAppRate Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(
              AppRate,
              [
                const FullType(AppRate),
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
  Future<bool> rateTheApp(String token, int rate, String note) async {
    try {
      final formData = {
        'app_rate': {
          'rate': rate,
          'note': note,
        }
      };
      final response = await _dio.post('rate_app',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer $token'}));
      print('rateTheApp Response StatusCode ${response.statusCode}');
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
  Future<bool> logout(String token) async {
    try {
      final response = await _dio.post('logout',
          options: Options(headers: {"Authorization": 'Bearer $token'}));
      print('rateTheApp Response StatusCode ${response.statusCode}');
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
  Future<UserModel> editUser(
      String username,
      String email,
      String tele,
      String gender,
      String country_code,
      File image,
      String token,
      String language) async {
    try {
      final formData = FormData.fromMap({
        "username": username,
        "email": email,
        "tele": tele,
        "gender": gender,
        "country_code": country_code
      });
      if (image != null && image.path.isNotEmpty) {
        formData.files.add(MapEntry(
          "image",
          await MultipartFile.fromFile(
            image.path,
            filename: basename(image.path),
          ),
        ));
      }
      final response = await _dio.post('user',
          data: formData,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
            "Accept-Language": language
          }));
      print('login Response StatusCode ${response.statusCode}');

      if (response.statusCode == 201) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(UserModel));
        print("implement edit status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException(code: response.statusCode);
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException(error: e.toString());
    }
  }

  @override
  Future<BaseBook> getFilteredBooks(
      {String bookName,
      String ISIN,
      String releaseDate,
      int authorId,
      int sectionId,
      String sortType,
      String language,
      int page}) async {
    try {
      List<String> queries = [];
      if (authorId != null && authorId != -1) {
        queries.add('author_id=$authorId');
      }
      if (sectionId != null && sectionId != -1) {
        queries.add('sections_ids=$sectionId');
      }
      if (bookName != null && bookName.isNotEmpty) {
        queries.add('query=$bookName');
      }
      if (ISIN != null && ISIN.isNotEmpty) {
        queries.add('isbn=$ISIN');
      }
      if (releaseDate != null && releaseDate.isNotEmpty) {
        queries.add('publish_year=$releaseDate');
      }
      if (sortType != null && sortType.isNotEmpty) {
        queries.add('sort_type=$sortType');
      }
      String finalQ = '';
      for (int i = 0; i < queries.length; i++) {
        finalQ += queries[i];
        if (i < queries.length - 1) finalQ += '&';
      }
      final response = await _dio.get('books/filter?$finalQ&page=$page',
          options: Options(headers: {"Accept-Language": language}));
      print('getFilteredBooks Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFilteredBooks Response body  ${response.data}');
        final books = serializers.deserialize(
          json.decode(response.data),
          specifiedType: FullType(BaseBook),
        );
        print(books);
        return books;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<Author>> getFilteredAuthors({
    int sectionId,
    String name,
    String language,
  }) async {
    try {
      List<String> queries = [];
      if (sectionId != null && sectionId != -1) {
        queries.add('section_id=$sectionId');
      }
      if (name != null && name.isNotEmpty) {
        queries.add('name=$name');
      }
      String finalQ = '';
      for (int i = 0; i < queries.length; i++) {
        finalQ += queries[i];
        if (i < queries.length - 1) finalQ += '&';
      }
      final response = await _dio.get('authors?$finalQ',
          options: Options(headers: {"Accept-Language": language}));
      print('getFilteredAuthors Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getFilteredAuthors Response body  ${response.data}');
        final authors = serializers.deserialize(
          json.decode(response.data)['data'],
          specifiedType: FullType(BuiltList, [const FullType(Author)]),
        );
        print(authors);
        return authors;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<Category> getCategoryById({int sectionId, String language}) async {
    try {
      final response = await _dio.get('sections/$sectionId?with_books=1',
          options: Options(headers: {"Accept-Language": language}));
      print('getCategoryById Response StatusCode ${response.statusCode}');
      if (response.statusCode == 200) {
        print('getCategoryById Response body  ${response.data}');

        final ret = serializers.deserialize(json.decode(response.data)['data'],
            specifiedType: FullType(Category));
        return ret;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
}
