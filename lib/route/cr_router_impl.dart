import 'package:flutter/material.dart';
import 'package:flutter_base_project/data/local/session_impl.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/route/cr_auto_route.dart';
import 'package:flutter_base_project/route/cr_router.dart';
import 'package:rxdart_ext/single.dart';

class CrRouterImpl implements CrRouter {
  late CrAutoRoute router;
  final GlobalKey<NavigatorState> _navigatorKey;
  final SessionImpl _session = getIt<SessionImpl>();

  CrRouterImpl(this._navigatorKey) {
    router = CrAutoRoute(navigatorKey: _navigatorKey);
  }

  @override
  BuildContext? get currentNavigation => _navigatorKey.currentContext;

  @override
  Single<void> goBack() {
    return Single.fromFuture(router.pop());
  }

  @override
  Single<void> goBackToRoot() {
    return Single<void>.fromFuture(router.pushAndPopUntil(
        MainRoute(isFirstTime: true),
        predicate: (Route route) => false));
  }

  @override
  Single<void> goToComponentPage() {
    return Single<void>.fromFuture(router.replace(ComponentRoute()));
  }

  @override
  Single<void> goToLoginPage({bool isReplace = false}) {
    if (isReplace) {
      return Single<void>.fromFuture(router.replace(LoginRoute()));
    } else {
      return Single<void>.fromFuture(router.push(LoginRoute()));
    }
  }

  @override
  Single<void> goToRegisterPage() {
    //return Single<void>.fromFuture(router.push(RegisterRoute()));
    // TODO: implement goToComponentPage
    throw UnimplementedError();
  }

  @override
  Single<void> goToHomePage() {
    // TODO: implement goToHomePage
    throw UnimplementedError();
  }

  @override
  Single<void> goToCalendarPage() {
    final routeCalendarBeasiswa = _session.getIsLogin().then((value) {
      if (value) {
        return router.push(CalendarRoute());
      } else {
        return router.push(LoginRoute());
      }
    });
    return Single<void>.fromFuture(routeCalendarBeasiswa);
  }
}
