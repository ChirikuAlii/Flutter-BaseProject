// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_LoginViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isValidEmailAtom =
      Atom(name: '_LoginViewModelBase.isValidEmail', context: context);

  @override
  bool get isValidEmail {
    _$isValidEmailAtom.reportRead();
    return super.isValidEmail;
  }

  @override
  set isValidEmail(bool value) {
    _$isValidEmailAtom.reportWrite(value, super.isValidEmail, () {
      super.isValidEmail = value;
    });
  }

  late final _$isValidPasswordAtom =
      Atom(name: '_LoginViewModelBase.isValidPassword', context: context);

  @override
  bool get isValidPassword {
    _$isValidPasswordAtom.reportRead();
    return super.isValidPassword;
  }

  @override
  set isValidPassword(bool value) {
    _$isValidPasswordAtom.reportWrite(value, super.isValidPassword, () {
      super.isValidPassword = value;
    });
  }

  late final _$isValidFieldLoginAtom =
      Atom(name: '_LoginViewModelBase.isValidFieldLogin', context: context);

  @override
  bool get isValidFieldLogin {
    _$isValidFieldLoginAtom.reportRead();
    return super.isValidFieldLogin;
  }

  @override
  set isValidFieldLogin(bool value) {
    _$isValidFieldLoginAtom.reportWrite(value, super.isValidFieldLogin, () {
      super.isValidFieldLogin = value;
    });
  }

  late final _$statusEmailAtom =
      Atom(name: '_LoginViewModelBase.statusEmail', context: context);

  @override
  StatusField get statusEmail {
    _$statusEmailAtom.reportRead();
    return super.statusEmail;
  }

  @override
  set statusEmail(StatusField value) {
    _$statusEmailAtom.reportWrite(value, super.statusEmail, () {
      super.statusEmail = value;
    });
  }

  late final _$statusPasswordAtom =
      Atom(name: '_LoginViewModelBase.statusPassword', context: context);

  @override
  StatusField get statusPassword {
    _$statusPasswordAtom.reportRead();
    return super.statusPassword;
  }

  @override
  set statusPassword(StatusField value) {
    _$statusPasswordAtom.reportWrite(value, super.statusPassword, () {
      super.statusPassword = value;
    });
  }

  late final _$messageEmailAtom =
      Atom(name: '_LoginViewModelBase.messageEmail', context: context);

  @override
  String get messageEmail {
    _$messageEmailAtom.reportRead();
    return super.messageEmail;
  }

  @override
  set messageEmail(String value) {
    _$messageEmailAtom.reportWrite(value, super.messageEmail, () {
      super.messageEmail = value;
    });
  }

  late final _$messagePasswordAtom =
      Atom(name: '_LoginViewModelBase.messagePassword', context: context);

  @override
  String get messagePassword {
    _$messagePasswordAtom.reportRead();
    return super.messagePassword;
  }

  @override
  set messagePassword(String value) {
    _$messagePasswordAtom.reportWrite(value, super.messagePassword, () {
      super.messagePassword = value;
    });
  }

  late final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase', context: context);

  @override
  void doLogin(String email, String password, dynamic String) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.doLogin');
    try {
      return super.doLogin(email, password, String);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void doValidationEmail(String email) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.doValidationEmail');
    try {
      return super.doValidationEmail(email);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void doValidationPassword(String password) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.doValidationPassword');
    try {
      return super.doValidationPassword(password);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void doValidationForm() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.doValidationForm');
    try {
      return super.doValidationForm();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void doResetField() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.doResetField');
    try {
      return super.doResetField();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isValidEmail: ${isValidEmail},
isValidPassword: ${isValidPassword},
isValidFieldLogin: ${isValidFieldLogin},
statusEmail: ${statusEmail},
statusPassword: ${statusPassword},
messageEmail: ${messageEmail},
messagePassword: ${messagePassword}
    ''';
  }
}
