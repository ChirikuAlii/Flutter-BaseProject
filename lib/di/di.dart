import 'package:flutter/material.dart';
import 'package:flutter_base_project/data/local/database/objectbox_database.dart';
import 'package:flutter_base_project/data/local/session_impl.dart';
import 'package:flutter_base_project/data/remote/http_inspector/alice_inspector.dart';
import 'package:flutter_base_project/data/remote/service/api_client_impl.dart';
import 'package:flutter_base_project/domain/home/repo/home_repo_impl.dart';
import 'package:flutter_base_project/domain/home/usecase/home_use_case.dart';
import 'package:flutter_base_project/domain/user/repo/user_repo_impl.dart';
import 'package:flutter_base_project/domain/user/usecase/login_use_case.dart';
import 'package:flutter_base_project/pages/calendar/calendar_viewmodel.dart';
import 'package:flutter_base_project/pages/home/home_viewmodel.dart';
import 'package:flutter_base_project/pages/login/login_viewmodel.dart';
import 'package:flutter_base_project/pages/main/main_viewmodel.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:flutter_base_project/utils/cr_log.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final GetIt getIt = GetIt.instance;
final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

Future<void> setupModules({required List<Function> injectModule}) async {
  for (final Function element in injectModule) {
    await element.call();
  }
}

Future<void> localModules() async {
  getIt.registerSingleton(CRLog());
  getIt.registerSingletonAsync<SessionImpl>(() async {
    return await SessionImpl.init();
  });

  getIt.registerSingletonAsync<ObjectBoxDatabase>(() async {
    return await ObjectBoxDatabase.init();
  });
}

Future<void> remoteModules() async {}

Future<void> appModules() async {
  getIt.registerSingletonWithDependencies(() => CrRouterImpl(_navigatorKey),
      dependsOn: [SessionImpl]);
  getIt.registerSingleton(AliceInspector(_navigatorKey));
  getIt.registerSingletonWithDependencies(
      () => ApiClientImpl(aliceInspetor: getIt<AliceInspector>()),
      dependsOn: [SessionImpl]);
}

Future<void> repoModules() async {
  getIt.registerFactory(() => HomeRepoImpl());
  getIt.registerFactory(() => UserRepoImpl());
}

Future<void> useCaseModules() async {
  getIt.registerFactory(() => HomeUseCase());
  getIt.registerFactory(() => LoginUseCase());
}

List<SingleChildWidget> viewModelModule() {
  return [
    Provider<HomeViewModel>(
      create: (_) => HomeViewModel(),
    ),
    Provider<MainViewModel>(create: (_) => MainViewModel()),
    Provider<LoginViewModel>(create: (_) => LoginViewModel()),
    Provider<CalendarViewModel>(
        create: (_) => CalendarViewModel()),
    // Provider<CategoryViewModel>(create: (_) => CategoryViewModel())
  ];
}
