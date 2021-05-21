import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class MyAPI {
  final Dio _dio = Dio();

  Future<void> register({
    @required String username,
    @required String email,
    @required String password,
  }) async {
    try {
      // ignore: unused_local_variable
      final Response response = await this._dio.post(
        'https://curso-api-flutter.herokuapp.com/api/v1/register',
        data: {
          "username": username,
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        print(response.data);
      }
    } catch (e) {
      print(e);
    }
  }
}
