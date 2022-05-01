import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'http_interceptor.dart';
import 'package:sac_v3/helpers/globals.dart' as globals;

class HttpClient {
  //Local
  static String baseUrl = 'localhost:57394';

  static final Client _client = InterceptedClient.build(
    interceptors: [HttpInterceptor()],
    requestTimeout: const Duration(seconds: 60),
  );

  static Future<Response> postXWWForm(
      {required String route, required Map<String, dynamic> jsonBody}) async {
    final Uri urlEndPoint = Uri.http(baseUrl, route);
    try {
      final Response response = await HttpClient._client.post(
        urlEndPoint,
        body: jsonBody,
        headers: {'Content-type': 'application/x-www-form-urlencoded'},
      );

      return handleHttpError(response: response);
    } catch (e) {
      handleHttpInterceptorException(e);
    }

    throw ('Erro desconhecido"');
  }

  static Future<Response> postAuth(
      {required String route, required Map<String, dynamic> jsonBody}) async {
    final Uri urlEndPoint = Uri.http(baseUrl, route);
    try {
      final jsonEncoded = jsonEncode(jsonBody);

      final Response response = await HttpClient._client.post(
        urlEndPoint,
        body: jsonEncoded,
        headers: {'Content-type': 'application/json'},
      );

      return handleHttpError(response: response);
    } catch (e) {
      handleHttpInterceptorException(e);
    }

    throw ('Erro desconhecido"');
  }

  static void handleHttpInterceptorException(e) {
    if (e.message.startsWith('Timeout')) {
      throw Exception('Serviço não disponível!');
    } else {
      throw e;
    }
  }

  static Future<Response> postJson(
      {required String route, required String jsonBody}) async {
    final Uri urlEndPoint = Uri.http(baseUrl, route);
    try {
      final Response response = await HttpClient._client.post(
        urlEndPoint,
        body: jsonBody,
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${globals.authData!.accessToken}',
        },
      );

      return handleHttpError(response: response);
    } catch (e) {
      handleHttpInterceptorException(e);
    }

    throw ('Erro desconhecido"');
  }

  static Future<Response> get({
    required String route,
    required Map<String, String> parameters,
  }) async {
    Uri urlEndPoint = Uri.http(baseUrl, route);
    urlEndPoint = Uri.http(baseUrl, route, parameters);

    try {
      final Response response = await HttpClient._client.get(
        urlEndPoint,
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${globals.authData!.accessToken}',
        },
      );

      return handleHttpError(response: response);
    } catch (e) {
      handleHttpInterceptorException(e);
    }

    throw ('Erro desconhecido"');
  }

  static Response handleHttpError({required Response response}) {
    if (response.statusCode == 200) {
      return response;
    }

    if (response.statusCode == 404) {
      final dynamic errors = jsonDecode(response.body)["message"];
      final String error = errors;
      throw Exception(error);
    }

    if (response.statusCode == 500) {
      final dynamic errors = jsonDecode(response.body)["errors"];
      final String error = errors[0]['message'];
      throw Exception(error);
    }

    throw HttpException('Http Error: ${response.statusCode.toString()}');
  }
}
