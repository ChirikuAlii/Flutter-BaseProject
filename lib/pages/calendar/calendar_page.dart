import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:rxdart/rxdart.dart';

@RoutePage()
class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final CrRouterImpl _router = getIt<CrRouterImpl>();
  final ScrollController _scrollController = ScrollController();
  final CompositeSubscription _subscriptions = CompositeSubscription();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _subscriptions.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: CRColorsDefault.primary),
        child: SafeArea(
          child: Center(
            child: Text('Page X'),
          ),
        ),
      ),
    );
  }
}
