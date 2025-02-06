import 'package:dio/dio.dart';

import '../configs/env.dart';

mixin ApiService {
  final _dio = Dio(
    BaseOptions(
      validateStatus: (status) => true,
      followRedirects: false,
    ),
  );

  Future<Response<T>> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authentication = false,
    ResponseType? responseType = ResponseType.json,
  }) async {
    final res = await _dio.get<T>(
      '${ENV.BASE_URL}$path',
      queryParameters: queryParameters,
      options: Options(
        followRedirects: false,
        // will not throw errors
        validateStatus: (status) => true,
        responseType: responseType,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': authentication ? '' : null,
        },
      ),
    );
    return res;
  }

  Future<Response<T>> post<T>({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    ResponseType? responseType = ResponseType.json,
    bool authentication = false,
  }) async {
    final res = await _dio.post<T>(
      '${ENV.BASE_URL}$path',
      data: data,
      queryParameters: queryParameters,
      options: Options(
        followRedirects: false,
        // will not throw errors
        validateStatus: (status) => true,
        responseType: responseType,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',

          // 'Authorization': authentication ? Base.userController.getToken() : null,
        },
      ),
    );
    return res;
  }
}
