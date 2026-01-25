import 'dart:async' as async;
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
      if (kDebugMode) print('NetworkApiService: SocketException');
      throw NoInternetException('');
    } on async.TimeoutException {
      if (kDebugMode) print('NetworkApiService: TimeoutException');
      throw TimeoutException('Request timed out');
    } catch (e) {
      if (kDebugMode) print('NetworkApiService: Unknown Exception $e');
      rethrow;
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
      throw NoInternetException('');
    } on async.TimeoutException {
      throw TimeoutException('Request timed out');
    }
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    try {
      final response = await http.delete(Uri.parse(url)).timeout(timeout);
      return _handleResponse(response);
    } on SocketException {
      throw NoInternetException('');
    } on async.TimeoutException {
      throw TimeoutException('Request timed out');
    }
  }

  dynamic _handleResponse(http.Response response) {
    dynamic responseJson;
    if (response.body.isNotEmpty) {
      responseJson = jsonDecode(response.body);
    }

    switch (response.statusCode) {
      case 200:
      case 201:
        return responseJson;
      case 400:
        throw BadRequestException(responseJson?['message']);
      case 401:
      case 403:
        throw UnauthorizedException(responseJson?['message']);
      case 404:
        throw FetchDataException(responseJson?['message']);
      case 500:
      default:
        throw FetchDataException(
          'Server Error with status code : ${response.statusCode}',
        );
    }
  }
}
