import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/widget/cr_text_field.dart';
import 'package:flutter_base_project/di/di.dart';
import 'package:flutter_base_project/domain/user/usecase/login_use_case.dart';
import 'package:flutter_base_project/pages/login/login_view.dart';
import 'package:flutter_base_project/utils/error_code/cr_error_handle.dart';
import 'package:flutter_base_project/utils/validation_ext.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final CompositeSubscription _subscription = CompositeSubscription();
  final LoginUseCase _loginUseCase = getIt<LoginUseCase>();
  late LoginView _view;

  @observable
  bool isLoading = false;

  @observable
  bool isValidEmail = false;

  @observable
  bool isValidPassword = false;

  @observable
  bool isValidFieldLogin = false;

  @observable
  StatusField statusEmail = StatusField.none;

  @observable
  StatusField statusPassword = StatusField.none;

  @observable
  String messageEmail = "";

  @observable
  String messagePassword = "";

  void init(LoginView view) {
    _view = view;
  }

  @action
  void doLogin(String email, String password, String) {
    //type phone
    isLoading = true;
    final login = _loginUseCase.run(email, password, "android").listen((value) {
      isLoading = false;
      if (value != null) {
        //success login
        _view.successLogin(value.message ?? "");
        doResetField();
      }
    }, onError: (error) {
      final crError = crHandlerError(error);
      isLoading = false;
      _view.errorLogin(crError.message);
    });
    _subscription.add(login);
  }

  @action
  void doValidationEmail(String email) {
    messageEmail = "";
    isValidEmail = email.isValidEmail;
    if (isValidEmail) {
      messageEmail = "";
      statusEmail = StatusField.success;
    } else {
      messageEmail = "Email is not valid";
      statusEmail = StatusField.error;
    }
  }

  @action
  void doValidationPassword(String password) {
    messagePassword = "";
    bool isValidLength = false;

    //check empty or not
    if (password.isNotEmpty) {
      //length
      if (password.length >= 8) {
        isValidLength = true;
      } else {
        messagePassword =
            "${messagePassword}Password must be at least 8 characters";
        if (messagePassword.isNotEmpty) {
          messagePassword = messagePassword + "\n";
        }
        isValidLength = false;
      }
    } else {
      isValidPassword = false;
      statusPassword = StatusField.error;
      messagePassword = "${messagePassword}Password should not empty";
    }

    //validation all requirment password field
    if (isValidLength) {
      isValidPassword = true;
      messagePassword = "";
    } else {
      isValidPassword = false;
      statusPassword = StatusField.error;
    }
  }

  @action
  void doValidationForm() {
    if (isValidEmail && isValidPassword) {
      isValidFieldLogin = true;
    } else {
      isValidFieldLogin = false;
    }
  }

  @action
  void doResetField() {
    statusEmail = StatusField.none;
    statusPassword = StatusField.none;
    isValidEmail = false;
    isValidPassword = false;
    isValidFieldLogin = false;
    emailController.clear();
    passwordController.clear();
  }

  void clear() {
    _subscription.clear();
  }
}
