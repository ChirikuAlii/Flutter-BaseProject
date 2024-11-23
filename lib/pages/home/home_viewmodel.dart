import 'package:flutter/material.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/home/usecase/home_use_case.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final HomeUseCase _homeUseCase = getIt<HomeUseCase>();
  final CompositeSubscription _subscriptions = CompositeSubscription();

  @observable
  bool isLoadingHome = false;


  @observable
  String errorMessage = '';

  void clear() {
    _subscriptions.clear();
  }
}
