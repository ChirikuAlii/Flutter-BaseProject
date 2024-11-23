import 'package:flutter_base_project/data/remote/service/api_client_impl.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/home/repo/home_repo.dart';


class HomeRepoImpl implements HomeRepo {
  final ApiClientImpl _apiClient = getIt<ApiClientImpl>();

}
