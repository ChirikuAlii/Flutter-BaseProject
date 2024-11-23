import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "errors") Errors? errors,
    @JsonKey(name: "data") Data? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: "access_token") String? accessToken,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Errors with _$Errors {
  factory Errors({
    @JsonKey(name: "email") List<String>? email,
    @JsonKey(name: "password") List<String>? password,
    @JsonKey(name: "device_name") List<String>? deviceName,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
