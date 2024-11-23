import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/data/local/session_impl.dart';
import 'package:flutter_base_project/design/widget/bottom_nav.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/pages/main/main_viewmodel.dart';
import 'package:flutter_base_project/pages/splash/splash_page.dart';
import 'package:flutter_base_project/route/cr_auto_route.dart';
import 'package:flutter_base_project/route/cr_router_impl.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class MainPageIndex {
  static const int home = 0;
  static const int bookmark = 1;
  static const int calendar = 2;
  static const int history = 3;
  static const int profile = 4;
}

@RoutePage()
class MainPage extends StatefulWidget {
  MainPage({Key? key, this.isFirstTime}) : super(key: key);

  bool? isFirstTime = true;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController();
  final CrRouterImpl _router = getIt<CrRouterImpl>();
  final SessionImpl _session = getIt<SessionImpl>();
  late MainViewModel _mainViewModel;
  int _selectedIndex = MainPageIndex.home;

  @override
  void initState() {
    _mainViewModel = Provider.of<MainViewModel>(_router.currentNavigation!);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _mainViewModel.isFirstTime = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _mainViewModel.isFirstTime == true
        ? SplashPage()
        : AutoTabsScaffold(
            routes: [
              HomeRoute(),
              BookmarkRoute(),
              CalendarRoute(),
              HisotryRoute(),
              ProfileRoute(),
            ],
            bottomNavigationBuilder: (context, tabRouter) {
              return Observer(
                builder: (context) {
                  return CRBottomNav(
                      onTap: (index) {
                        // if(index == MainPageIndex.cart || index == MainPageIndex.profile){
                        //       if(false == false){
                        //         _router.router.push( LoginRoute());
                        //         return;
                        //       }
                        //     }
                        tabRouter.setActiveIndex(index);
                        _mainViewModel.doChangeSelectedPage(index);
                        // _selectedIndex = index;
                        //setState(() {});
                      },
                      selectedIndex: _mainViewModel.selectedIndex);
                }
              );
            },
          );
  }
}
