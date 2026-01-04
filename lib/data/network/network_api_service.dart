import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc_clean_architecture/data/exceptions/app_exception.dart';
import 'package:bloc_clean_architecture/data/network/base_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkApiService implements BaseApiService {
  final timeout = Duration(seconds: 50);

  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url)).timeout(timeout);
      return _handleResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw TimeoutException();
    }
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    if (kDebugMode) {
      print('url $url');
      print('data $data');
    }
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(timeout);
      return _handleResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw TimeoutException();
    }
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    try {
      final response = await http.delete(Uri.parse(url)).timeout(timeout);
      return _handleResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw TimeoutException();
    }
  }

  dynamic _handleResponse(http.Response response) {
    dynamic responseJson = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
      case 201:
        return responseJson;
      case 400:
        throw BadRequestException("Bad Request");

      case 401:
      case 403:
        throw UnauthorizedException("Unauthorized");

      case 404:
        throw FetchDataException("Resource not found");
      case 500:
      default:
        throw 'Error occured while communicating with server with status code : ${response.statusCode}';
    }
  }
}
