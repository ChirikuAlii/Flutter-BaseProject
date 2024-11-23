import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/pages/bookmark/bookmark_page.dart';
import 'package:flutter_base_project/pages/calendar_beasiswa/calendar_page.dart';
import 'package:flutter_base_project/pages/component/component_page.dart';
import 'package:flutter_base_project/pages/history/history_page.dart';
import 'package:flutter_base_project/pages/home/home_page.dart';
import 'package:flutter_base_project/pages/login/login_page.dart';
import 'package:flutter_base_project/pages/main/main_page.dart';
import 'package:flutter_base_project/pages/profile/profile_page.dart';
import 'package:flutter_base_project/pages/splash/splash_page.dart';


part 'cr_auto_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class CrAutoRoute extends _$CrAutoRoute {
  CrAutoRoute({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        //AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ComponentRoute.page),
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: BookmarkRoute.page),
          AutoRoute(page: CalendarRoute.page),
          AutoRoute(page: HisotryRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(
          page: LoginRoute.page,
        ),
        // AutoRoute(page: RegisterRoute.page),
      ];

  //
}
