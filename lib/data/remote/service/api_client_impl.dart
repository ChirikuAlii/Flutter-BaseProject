import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_base_project/data/local/session_impl.dart';
import 'package:flutter_base_project/data/remote/http_inspector/alice_inspector.dart';
import 'package:flutter_base_project/data/remote/response/login_response.dart/login_response.dart';
import 'package:flutter_base_project/data/remote/response/now_playing_response/now_playing_response.dart';
import 'package:flutter_base_project/data/remote/service/api_client.dart';
import 'package:flutter_base_project/di/di.dart';

class ApiClientImpl implements ApiClient {
  late Dio _dio;
  late AliceInspector _aliceInspector;
  final SessionImpl _session = getIt<SessionImpl>();

  final _baseUrl = "https://api.themoviedb.org/3";

  final defaultParams = {
    "api_key": "3b980052023e8e6898f4578a6972740b",
    "language": "en-US",
    "page": "1",
  };

  final options = BaseOptions(
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      });

  String _urlApi(String endpoint) {
    return "$_baseUrl$endpoint";
  }

  ApiClientImpl({required AliceInspector aliceInspetor}) {
    _dio = Dio(options);
    _aliceInspector = aliceInspetor;
    _dio.interceptors.add(_aliceInspector.dioInterceptor());
  }

  @override
  Stream<NowPlayingResponse> getNowPlayingMovies() {
    final response = _dio
        .get(_urlApi("movie/now_playing"), queryParameters: defaultParams)
        .asStream();
    return response.map((value) {
      return NowPlayingResponse.fromJson(value.data);
    });
  }

  @override
  Stream<LoginResponse> login(String email, String password,
      String deviceName) {
    final body = {
      "email": email,
      "password": password,
      "device_name": deviceName
    };
    final response = _dio.post(_urlApi("auth/token"), data: body).asStream();
    return response.map((value) {
      return LoginResponse.fromJson(value.data);
    });
  }
}

