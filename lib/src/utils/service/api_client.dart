import "package:dio/dio.dart";

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constants/bool_value.dart';
import '../../constants/numeric_value.dart';
import '../../constants/text_string.dart';

//paramètre réseau pour avoir accès à l'API
class ApiClient {
  late Dio _dio;
  static String url = baseUrl;

  ApiClient() {
    var options = BaseOptions(
      baseUrl: url,
      connectTimeout: Duration(milliseconds: connectTimeout),
      receiveTimeout: Duration(milliseconds: receiveTimeout),
    );
    _dio = Dio(options);
    //_dio.interceptors.add(CustomInterceptors());
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: showRequestHeader,
      requestBody: showRequestBody,
      responseBody: showResponseBody,
      responseHeader: showResponseHeader,
      compact: showCompact,
    ));
  }

  Dio getDio() {
    return _dio;
  }
}
