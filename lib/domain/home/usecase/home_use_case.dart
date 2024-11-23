import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/home/repo/home_repo.dart';
import 'package:flutter_base_project/domain/home/repo/home_repo_impl.dart';

class HomeUseCase {
  final HomeRepoImpl _homeRepo = getIt<HomeRepoImpl>();


}
