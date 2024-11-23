// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalendarViewModel on _CalendarBeasiswaViewModelBase, Store {
  late final _$statePaginationAtom = Atom(
      name: '_CalendarBeasiswaViewModelBase.statePagination', context: context);

  @override
  StatePagination get statePagination {
    _$statePaginationAtom.reportRead();
    return super.statePagination;
  }

  @override
  set statePagination(StatePagination value) {
    _$statePaginationAtom.reportWrite(value, super.statePagination, () {
      super.statePagination = value;
    });
  }

  @override
  String toString() {
    return '''
statePagination: ${statePagination}
    ''';
  }
}
