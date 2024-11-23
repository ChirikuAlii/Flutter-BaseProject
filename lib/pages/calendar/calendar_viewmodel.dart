import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
part 'calendar_viewmodel.g.dart';

class CalendarViewModel = _CalendarBeasiswaViewModelBase
    with _$CalendarViewModel;

abstract class _CalendarBeasiswaViewModelBase with Store {


  @observable
  StatePagination statePagination = StatePagination.init;


  final CompositeSubscription _subscriptions = CompositeSubscription();
  final TextEditingController searchController = TextEditingController();



  clear() {
    _subscriptions.clear();
  }



  void init() {

  }

  final listSubject = BehaviorSubject<EventGetListData>();
  final searchSubject = BehaviorSubject<String>();

}

enum StatePagination { init, loadMore }

sealed class EventGetListData {}

class Init extends EventGetListData {}

class LoadMore extends EventGetListData {
  final int page;
  final String? name;
  final String? date;
  final String? degrees;
  final String? countries;
  final String? fundingType;
  final String? institutionPartner;
  LoadMore({
    required this.page,
    this.name,
    this.date,
    this.degrees,
    this.countries,
    this.fundingType,
    this.institutionPartner,
  });
}

class Search extends EventGetListData {
  final String search;

  Search(this.search);
}

class Filter extends EventGetListData {
  final String? name;
  final String? date;
  final String? degrees;
  final String? countries;
  final String? fundingType;
  final String? institutionPartner;

  Filter({
    this.name,
    this.date,
    this.degrees,
    this.countries,
    this.fundingType,
    this.institutionPartner,
  });
}

class ChangeDate extends EventGetListData {
  final String dateTime;

  ChangeDate(this.dateTime);
}
//enum EventGetListBeasiswa { init, loadMore,search,filter }
