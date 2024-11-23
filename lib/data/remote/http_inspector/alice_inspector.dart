import 'package:alice/alice.dart';
import 'package:alice/core/alice_dio_interceptor.dart';
import 'package:flutter/material.dart';

class AliceInspector {
  final Alice alice = Alice();
  final GlobalKey<NavigatorState> _navigatorKey;

  AliceInspector(this._navigatorKey) {
    alice.setNavigatorKey(_navigatorKey);
  }

  AliceDioInterceptor dioInterceptor() {
    return alice.getDioInterceptor();
  }

  void showInspector() {
    alice.showInspector();
  }
}
