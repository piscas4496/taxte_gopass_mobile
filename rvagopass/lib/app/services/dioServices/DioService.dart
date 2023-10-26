import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';

//import 'package:rvagopass/app/shared/preferences/app_prefs.dart';
import 'http_exceptions.dart';

enum HttpMethod { get, post, put, delete, patch }

class Api {
  
  static const host = 'http://192.168.193.74:8000';
  static const apiVersion='/api/v1';
  static const baseUrlVersion=host+apiVersion;
  static const testHost = "https://jsonplaceholder.typicode.com";
  static const paiement = '/paiement/paiement';
  static const comments = '/comments';
  static const login = '/paiement/loginmobile';
  static const signUp = '/sign-up';
}

class HttpService {
  static late Dio _dio;

  HttpService() {
    _dio = Dio(BaseOptions(baseUrl: Api.baseUrlVersion));
  }

  static Dio get client {
    return _dio;
  }

  static Future request(HttpMethod method, String path,
      {dynamic payload,
      String? baseUrl,
      Map<String, dynamic>? headers,
      bool requestToken = false}) async {
    // http request
    try {
      if (baseUrl != null) {
        client.options.baseUrl = baseUrl;
      }

      final response = await client
          .request(
            path,
            data: payload,
            options: Options(
                method: method.name.toUpperCase(),
                headers: {
                  'X-Requested-With': 'XMLHttpRequest',
                  'Content-Type': 'application/json',
                  if (requestToken)
                    'Authorization': 'Bearer '
                },
                validateStatus: (status) => true),
          )
          .timeout(
            const Duration(seconds: 30),
          );

      return _onResponse(response);
    } on Exception catch (exception) {
      log(exception.toString());
      _onException(exception, path);
    }
  }

  static _onResponse(Response response) {
    log(response.data.toString());
    switch (response.statusCode) {
      // when request is succes
      case 200:
        return response.data;
      case 401:
        // when the user is not authenticated
        throw UnauthenticatedException(
            path: response.requestOptions.path,
            title: 'Unauthenticated',
            message: 'Vous n\'êtes pas authentifié');
      // when the page is not found
      case 404:
        throw NotFoundErrorException(
            path: response.requestOptions.path,
            title: 'NotFound',
            message: 'Cette requêtte est introuvable');

      case 422:
        String errorMessage = '';
        if (response.data != null) {
          if (response.data['errors'] != null) {
            response.data['errors'].values.toList().forEach((el) =>
                errorMessage +=
                    "${el.toString().replaceAll("[", "").replaceAll("]", "")}\n");
          }
          // if (response.data['message'] != null) {
          //   errorMessage = response.data['message'];
          // }
        }
        throw ValidationErrorException(
          title: 'Erreur de validation',
          message: errorMessage,
        );

      // when the server is not responding
      case 500:
        throw ServerErrorException(
            path: response.requestOptions.path,
            title: 'Erreur de Serveur',
            message: 'Veuillez contacter le service technique');
      default:
    }
  }

  static _onException(Exception exception, String path) {
    if (exception is TimeoutException) {
      throw ApiNotRespondingException(
        path: path,
        title: 'Timeout error',
        message: 'le serveur ne repond pas\nveuillez reessayer plus tard',
      );
    }
    if (exception is DioError) {
      if (exception.type == DioErrorType.other) {
        throw ConnectivityException(
          path: path,
          title: 'Connexion impossible',
          message: 'Erreur survenue ${exception.message}',
        );
      }
    } else {
      throw exception;
    }
  }
}
