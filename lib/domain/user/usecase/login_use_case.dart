import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/default_result.dart';
import 'package:flutter_base_project/domain/user/repo/user_repo_impl.dart';

class LoginUseCase {
  final UserRepoImpl _repo = getIt<UserRepoImpl>();

  Stream<DefaultResult> run(String email, String password, String deviceName) {
    return _repo.login(email, password, deviceName);
  }
}
