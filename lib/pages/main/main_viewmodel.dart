import 'package:flutter_base_project/pages/main/main_page.dart';
import 'package:mobx/mobx.dart';

part 'main_viewmodel.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store {
  @observable
  bool isFirstTime = true;

  @observable
  int selectedIndex = MainPageIndex.home;

  @action
  void doChangeSelectedPage(int index) {
    selectedIndex = index;
  }
}
