import 'package:flutter_base_project/data/remote/response/login_response.dart/login_response.dart';
import 'package:flutter_base_project/data/remote/response/now_playing_response/now_playing_response.dart';

mixin ApiClient {
  Stream<NowPlayingResponse> getNowPlayingMovies();
  Stream<LoginResponse> login(String email, String password, String deviceName);

}
