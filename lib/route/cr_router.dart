import 'package:flutter/material.dart';
import 'package:rxdart_ext/single.dart';

mixin CrRouter {
  BuildContext? get currentNavigation;

  Single<void> goBackToRoot();
  Single<void> goBack();
  Single<void> goToComponentPage();
  Single<void> goToLoginPage();
  Single<void> goToRegisterPage();
  Single<void> goToHomePage();
  Single<void> goToCalendarPage();
}
