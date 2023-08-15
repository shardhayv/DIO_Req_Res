import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'dio_error_interceptor.dart';

class HttpService {
  final Dio _dio;
  final String _baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';
  final Duration _connectTimeout = const Duration(seconds: 5);
  final Duration _receiveTimeout = const Duration(seconds: 5);

  Dio get dio => _dio;

  HttpService(this._dio) {
    _dio
      ..options.baseUrl = _baseUrl
      ..options.connectTimeout = _connectTimeout
      ..options.receiveTimeout = _receiveTimeout
      ..interceptors.add(DioErrorInterceptor())
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseHeader: true))
      ..options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
  }
}
