import 'package:dio/dio.dart';

class NetworkUtils {
  //https://firestore.googleapis.com/v1/projects/store-api-7cdfc/databases/(default)/documents/
  static const String baseUrl =
      'https://firestore.googleapis.com/v1/projects/store-api-7cdfc/databases/(default)/documents/';
  static Dio? _dio;

  static Future<void> init() async {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.validateStatus = (status) => true;
  }

  static Future<Response<dynamic>> get({
    required String path,
    required String headers,
  }) async {
    print("path:$path  headers:$headers");

    return _dio!.get("$path/$headers");
  }
}
