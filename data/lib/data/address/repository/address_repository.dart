import 'dart:convert';

import 'package:dio/dio.dart';

class AddressRepository {
  AddressRepository();

  Future<String> getKaKaoAddressWithPosition(double x, double y) async {
    var dio = Dio();
    print(x);
    dio.options.headers["Authorization"] =
        "KakaoAK bb8259b28e2534fad24577bee7077b89";
    dio.options.headers["Content-Type"] = "application/json;charset=UTF-8";
    Response<dynamic> response = await dio.get(
      "https://dapi.kakao.com/v2/local/geo/coord2address.json",
      queryParameters: {
        "x": y,
        "y": x,
      },
    );
    Map<String, dynamic> data = json.decode("$response");

    return data["documents"][0]["address"]["address_name"];
  }
}
