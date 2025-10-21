import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/design_system/themes/color_theme.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupModules(
      injectModule: [localModules, appModules, repoModules, useCaseModules]);
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('id')],
    path: "assets/translations",
    child: const CrApp(),
  ));
}

class CrApp extends StatelessWidget {
  const CrApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final crRouter = getIt<CrRouterImpl>();
            return MultiProvider(
              providers: viewModelModule(),
              builder: (context, child) {
                return MaterialApp.router(
                  routerConfig: crRouter.router.config(),
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  theme: ThemeData(extensions: <ThemeExtension<dynamic>>[
                    CRColorThemes.light
                  ]),
                  darkTheme: ThemeData(extensions: <ThemeExtension<dynamic>>[
                    CRColorThemes.dark
                  ]),
                  themeMode: ThemeMode.light,
                );
              },
            );
          } else {
            return Container(color: CRColorsDefault.black);
          }
        });
  }
}
