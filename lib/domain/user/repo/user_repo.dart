import 'package:flutter_base_project/domain/default_result.dart';

mixin UserRepo {
  Stream<DefaultResult> login(String email, String password, String deviceName);
  //Stream<void> register(String email, String password, String deviceName);
  // Stream<void> logout();
  //Stream<void> getProfile();
  // Stream<void> forgotPassword(String email);
  // Stream<void> changePassword(String oldPassword, String newPassword);
  // Stream<void> updateProfile(String name, String email, String phone);
}
