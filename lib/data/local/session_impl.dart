import 'package:flutter_base_project/data/local/session.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kAccessToken = "accessToken";

class SessionImpl implements Session {
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _pref;
  Map<String, String> _secureStorageValues;

  SessionImpl(this._secureStorage, this._pref, this._secureStorageValues);

  static Future<SessionImpl> init() async {
    String iOSAccountName = "base_project_app";
    FlutterSecureStorage secureStorage = FlutterSecureStorage(
      aOptions: const AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accountName: iOSAccountName),
    );
    SharedPreferences pref = await SharedPreferences.getInstance();
    final Map<String, String> secureStorageValues =
        await secureStorage.readAll();
    return SessionImpl(secureStorage, pref, secureStorageValues);
  }

  @override
  Future<String> getToken() async {
    if (_secureStorageValues.containsKey(kAccessToken)) {
      return _secureStorageValues[kAccessToken] ?? "";
    } else {
      return "";
    }
  }

  @override
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: kAccessToken, value: token);
    _secureStorageValues = await _secureStorage.readAll();
  }

  @override
  Future<void> saveIsLogin(bool isLogin) {
    return _pref.setBool("isLogin", isLogin);
  }

  @override
  Future<bool> getIsLogin() {
    return Future.value(_pref.getBool("isLogin") ?? false);
  }
}
