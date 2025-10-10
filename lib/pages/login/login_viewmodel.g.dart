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

  late final _$emailStateAtom =
      Atom(name: '_LoginViewModelBase.emailState', context: context);

  @override
  CRTextFieldState get emailState {
    _$emailStateAtom.reportRead();
    return super.emailState;
  }

  @override
  set emailState(CRTextFieldState value) {
    _$emailStateAtom.reportWrite(value, super.emailState, () {
      super.emailState = value;
    });
  }

  late final _$passwordStateAtom =
      Atom(name: '_LoginViewModelBase.passwordState', context: context);

  @override
  CRTextFieldState get passwordState {
    _$passwordStateAtom.reportRead();
    return super.passwordState;
  }

  @override
  set passwordState(CRTextFieldState value) {
    _$passwordStateAtom.reportWrite(value, super.passwordState, () {
      super.passwordState = value;
    });
  }

  late final _$emailMessageAtom =
      Atom(name: '_LoginViewModelBase.emailMessage', context: context);

  @override
  String get emailMessage {
    _$emailMessageAtom.reportRead();
    return super.emailMessage;
  }

  @override
  set emailMessage(String value) {
    _$emailMessageAtom.reportWrite(value, super.emailMessage, () {
      super.emailMessage = value;
    });
  }

  late final _$passwordMessageAtom =
      Atom(name: '_LoginViewModelBase.passwordMessage', context: context);

  @override
  String get passwordMessage {
    _$passwordMessageAtom.reportRead();
    return super.passwordMessage;
  }

  @override
  set passwordMessage(String value) {
    _$passwordMessageAtom.reportWrite(value, super.passwordMessage, () {
      super.passwordMessage = value;
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
emailState: ${emailState},
passwordState: ${passwordState},
emailMessage: ${emailMessage},
passwordMessage: ${passwordMessage}
    ''';
  }
}
