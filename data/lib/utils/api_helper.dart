import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';

import 'auth_manager.dart';

Future<Response> getByToken(String path, Map<String, dynamic>? params,
    {Dio? dio}) async {
  dio = dio ?? Dio();
  //Q.예외 처리 해야됨? Token이 없으면 어캐함?
  String? loginToken = AuthManager.instance.getToken();

  final options = Options(headers: {"Authorization": "Bearer $loginToken"});

  Response res = await dio.get(
    "$host$path",
    options: options,
    queryParameters: params,
  );
  return res;
}

Future<Response?> postByToken<T>(String path, T data, {Dio? dio}) async {
  dio = dio ?? Dio();
  String? loginToken = AuthManager.instance.getToken();

  final options = Options(
    headers: {
      "Authorization": "Bearer $loginToken",
    },
  );

  Response res = await dio.post("$host$path", options: options, data: data);
  return res;
}

Future<Response> patchByToken<T>(String path, T data, {Dio? dio}) async {
  dio = dio ?? Dio();
  String? loginToken = AuthManager.instance.getToken();

  final options = Options(
    headers: {
      "Authorization": "Bearer $loginToken",
    },
  );
  Response res = await dio.patch("$host$path", data: data, options: options);
  return res;
}

Future<Response> putByToken<T>(
  String path, {
  T? data,
  Map<String, dynamic>? queryParams,
  Dio? dio,
}) async {
  dio = dio ?? Dio();
  String? loginToken = AuthManager.instance.getToken();

  final options = Options(
    headers: {
      "Authorization": "Bearer $loginToken",
    },
  );
  Response res = await dio.put("$host$path",
      data: data, queryParameters: queryParams, options: options);
  return res;
}

Future<Response> deleteByToken(
  String path, {
  Dio? dio,
  Map<String, dynamic>? params,
}) async {
  dio = dio ?? Dio();
  String? loginToken = AuthManager.instance.getToken();

  final options = Options(
    headers: {"Authorization": "Bearer $loginToken"},
  );

  Response res =
      await dio.delete("$host$path", options: options, queryParameters: params);
  return res;
}
