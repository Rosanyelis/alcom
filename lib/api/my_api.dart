import 'package:alcom/pages/home_page.dart';
import 'package:alcom/utils/auth.dart';
import 'package:alcom/utils/dialogs.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

const baseUrl = 'https://curso-api-flutter.herokuapp.com';

class MyAPI {
  MyAPI._internal();
  static MyAPI _instance = MyAPI._internal();
  static MyAPI get instance => _instance;

  final Dio _dio = Dio(
    BaseOptions(baseUrl: baseUrl),
  );

  // Registro de usuario

  Future<void> register(
    BuildContext context, {
    @required String username,
    @required String email,
    @required String password,
  }) async {
    final ProgressDialog progressDialog = ProgressDialog(context);
    try {
      progressDialog.show();
      final Response response = await this._dio.post(
        '/api/v1/register',
        data: {
          "username": username,
          "email": email,
          "password": password,
        },
      );
      await Auth.instance.setSession(response.data);
      progressDialog.dismiss();

      Navigator.pushNamedAndRemoveUntil(
        context,
        HomePage.routeName,
        (_) => false,
      );
    } catch (e) {
      progressDialog.dismiss();
      if (e is DioError) {
        print(e.response.statusCode);
        print(e.response.data);
        Dialogs.info(
          context,
          title: "ERROR",
          content: e.response.statusCode == 409
              ? 'Duplicado el usuario o el correo electrónico'
              : e.message,
        );
      } else {
        print(e);
      }
    }
  }

  // Proceso de Logueo
  Future<void> login(
    BuildContext context, {
    @required String email,
    @required String password,
  }) async {
    final ProgressDialog progressDialog = ProgressDialog(context);
    try {
      progressDialog.show();
      final Response response = await this._dio.post(
        '/api/v1/login',
        data: {
          "email": email,
          "password": password,
        },
      );

      /*
        Funcion asincrona que al registrarse presenta el cierre del
        dialogo y luego elimina las paginas para evitar el regreso a 
        formulario de registro o inicio de sesión,
        a menos que cierre la sesion en dashboard
      */
      await Auth.instance.setSession(response.data);
      progressDialog.dismiss();
      Navigator.pushNamedAndRemoveUntil(
        context,
        HomePage.routeName,
        (_) => false,
      );
    } catch (e) {
      progressDialog.dismiss();
      if (e is DioError) {
        print(e.response.statusCode);
        print(e.response.data);
        String message = e.message;
        if (e.response.statusCode == 404) {
          message = "Usuario no encontrado";
        } else if (e.response.statusCode == 403) {
          message = "Contraseña Inválida";
        }

        Dialogs.info(
          context,
          title: "ERROR",
          content: message,
        );
      } else {
        print(e);
      }
    }
  }

  // Proceso de refrescar el token
  Future<dynamic> refresh(String expiredToken) async {
    try {
      final Response response = await this._dio.post(
            '/api/v1/refresh-token',
            options: Options(headers: {
              'token': expiredToken,
            }),
          );
      return response.data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  // Obtener la informacion del usuario
  // Future<User> getUserInfo() async {
  //   try {
  //     final String token = await Auth.instance.accessToken;
  //     final Response response = await this._dio.get(
  //           '/api/v1/user-info',
  //           options: Options(headers: {
  //             'token': token,
  //           }),
  //         );

  //     print(response.data);
  //     return User.fromJson(response.data);
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }
}
