import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/pages/home/home_viewmodel.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CrRouterImpl _router = getIt<CrRouterImpl>();
  late HomeViewModel _viewModel;

  @override
  void initState() {
    _viewModel = Provider.of<HomeViewModel>(_router.currentNavigation!);
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //_router.currentNavigation!.setLocale(Locale('en'));

    return Scaffold(
        backgroundColor: CRColorsDefault.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: SafeArea(child: CRText(text: "Home Page"))));
  }
}
