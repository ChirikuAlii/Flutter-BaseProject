import 'package:flutter_base_project/data/local/session_impl.dart';
import 'package:flutter_base_project/data/remote/service/api_client_impl.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/default_result.dart';
import 'package:flutter_base_project/domain/user/repo/user_repo.dart';
import 'package:flutter_base_project/pages/home/home_viewmodel.dart';
import 'package:rxdart/rxdart.dart';

class UserRepoImpl implements UserRepo {
  final ApiClientImpl _apiClient = getIt<ApiClientImpl>();
  final SessionImpl _session = getIt<SessionImpl>();
  @override
  Stream<DefaultResult> login(
      String email, String password, String deviceName) {
    final response = _apiClient.login(email, password, deviceName);

    return response.doOnData((value) {
      _session.saveToken(value.data?.accessToken ?? "");
      _session.saveIsLogin(true);
    }).map((value) {
      return DefaultResult(message: "Suksess Login");
    });
  }
}
