class AuthManager {
  static AuthManager? _instance;
  // String? token;
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibG9naW5faWQiOiJ0ZXN0IiwiZXhwX3RpbWUiOjE3MjQwMTMwMTZ9.p8UD-HqC1ks7hQDisjm6eOvoEhI9Ywzk9oZNisNGVho";

  AuthManager._internal();

  static AuthManager get instance {
    _instance ??= AuthManager._internal();
    return _instance!;
  }

  Future<void> setToken(String newToken) async {
    token = newToken;
  }

  String? getToken() {
    return token;
  }
}
