import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/images/images.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';
import 'package:rxdart/rxdart.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final CrRouterImpl _router = getIt<CrRouterImpl>();
  final CompositeSubscription _subscription = CompositeSubscription();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      _subscription.add(_router.goToComponentPage().listen((_) {}));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: CRColors.white,
      ),
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            color: CRColors.white,
            width: Adaptive.of(context).totalWidth,
            height: Adaptive.of(context).totalHeight,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(CRImages.logoApp),
                    fit: BoxFit.fitWidth,
                    width: Adaptive.of(context).widthDesign(160),
                    height: Adaptive.of(context).heightDesign(160),
                  ),
                  SizedBox(
                    height: Adaptive.of(context).heightDesign(47),
                  ),
                  Text(
                    "",
                    style: CRTextStyle.headline1.modify(
                      color: CRColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
