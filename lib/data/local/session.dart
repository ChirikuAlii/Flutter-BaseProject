mixin Session {
  Future<void> saveToken(String token);
  Future<String> getToken();
  Future<void> saveIsLogin(bool isLogin);
  Future<bool> getIsLogin();
}
