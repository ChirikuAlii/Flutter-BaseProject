// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$isLoadingHomeAtom =
      Atom(name: '_HomeViewModelBase.isLoadingHome', context: context);

  @override
  bool get isLoadingHome {
    _$isLoadingHomeAtom.reportRead();
    return super.isLoadingHome;
  }

  @override
  set isLoadingHome(bool value) {
    _$isLoadingHomeAtom.reportWrite(value, super.isLoadingHome, () {
      super.isLoadingHome = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_HomeViewModelBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  @override
  String toString() {
    return '''
isLoadingHome: ${isLoadingHome},
errorMessage: ${errorMessage}
    ''';
  }
}
