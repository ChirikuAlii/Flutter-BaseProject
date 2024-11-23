import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/widget/cr_text_field.dart';

class CRAuthForms extends StatefulWidget {
  CRAuthForms({super.key, this.onChanged});

//form apa saja dan validatornya apa masing2

//logic nextnya sesuai urutannya

  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  Function(bool isValidEmail, bool isValidPassword, String email,
          String password)? onChanged =
      (isValidEmail, isValidPassword, email, password) {};

  @override
  State<CRAuthForms> createState() => _CRAuthFormsState();
}

class _CRAuthFormsState extends State<CRAuthForms> {
  bool? isValidEmail = false;
  bool? isValidPassword = false;

  String _messageEmail = "";
  String _messagePassword = "";
  String _emailValue = "";
  String _passwordValue = "";
  StatusField _statusFieldEmail = StatusField.none;

  StatusField _statusFieldPassword = StatusField.none;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CRTextField(
          validatorType: ValidatorType.email,
          focusNode: widget._focusNodeEmail,
          styleField: StyleField.filled,
          onChanged: (String value) {
            _emailValue = value;
            setState(() {
              _runValidationEmail(value);
              if (widget.onChanged != null) {
                widget.onChanged!(isValidEmail ?? false,
                    isValidPassword ?? false, _emailValue, _passwordValue);
                _setStatusFieldEmail();
              }
            });
          },
          onSubmit: () {
            widget._focusNodePassword.requestFocus();
          },
          statusField: _statusFieldEmail,
          message: _messageEmail,
        ),
        const SizedBox(height: 24),
        CRTextField(
          validatorType: ValidatorType.password,
          focusNode: widget._focusNodePassword,
          styleField: StyleField.filled,
          onChanged: (String value) {
            _passwordValue = value;
            setState(() {
              _runValidationPassword(value);
              if (widget.onChanged != null) {
                widget.onChanged!(isValidEmail ?? false,
                    isValidPassword ?? false, _emailValue, _passwordValue);
                _setStatusFieldPassword();
              }
            });
          },
          onSubmit: () {
            //close keyboard
            widget._focusNodeEmail.unfocus();
            widget._focusNodePassword.unfocus();
          },
          statusField: _statusFieldPassword,
          message: _messagePassword,
        ),
      ],
    );
  }

  void _setStatusFieldEmail() {
    if (isValidEmail ?? false) {
      _statusFieldEmail = StatusField.success;
    } else {
      _statusFieldEmail = StatusField.error;
    }
  }

  void _setStatusFieldPassword() {
    if (isValidPassword ?? false) {
      _statusFieldPassword = StatusField.success;
    } else {
      _statusFieldPassword = StatusField.error;
    }
  }

  void _runValidationEmail(String email) {
    // Regular expression for validating an email address
    _messageEmail = "";
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(emailPattern);
    if (regExp.hasMatch(email)) {
      isValidEmail = true;
      _messageEmail = "";
    } else {
      _messageEmail = "${_messageEmail}Email is not valid";
      isValidEmail = false;
    }
  }

  void _runValidationPassword(String password) {
    _messagePassword = "";
    //widget.isValidPassword = false;

    var isValidUpperCase = false;
    var isValidLength = false;
    var isValidNumber = false;
    var isNotEmptyPassword = false;
    var regExp = RegExp('[A-Z]');
    var spacePasswordCount = 0;
    if (password != "") {
      isNotEmptyPassword = true;
      //--------------------------------------lenght--------------------------------------
      if (password.length >= 8) {
        isValidLength = true;
      } else {
        _messagePassword =
            "${_messagePassword}Password should contain at least 8 characters";
        if (_messagePassword.isNotEmpty) {
          _messagePassword = "$_messagePassword\n";
        }
      }
      //--------------------------------------lenght--------------------------------------

      //--------------------------------------uppercase--------------------------------------
      // for (int i = 0; i < password.length; i++) {
      //   if (password[i] == password[i].toUpperCase()) {
      //     isValidUpperCase = true;
      //   }
      // }

      /*      if (regExp.hasMatch(password)) {
        isValidUpperCase = true;
      } else {
        _messagePassword =
            _messagePassword + "Password should contain uppercase";
        isValidUpperCase = false;
        if (_messagePassword.isNotEmpty) {
          _messagePassword = _messagePassword + "\n";
        }
      } */

      //--------------------------------------uppercase--------------------------------------

      //--------------------------------------number--------------------------------------
      /*    if (password.contains(RegExp(r'[0-9]'))) {
        isValidNumber = true;
      } else {
        _messagePassword = _messagePassword + "Password should contain number";
        isValidNumber = false;
        if (_messagePassword.isNotEmpty) {
          _messagePassword = _messagePassword + "\n";
        }
      } */
      //--------------------------------------number--------------------------------------
    } else {
      isValidPassword = false;
      _messagePassword = "${_messagePassword}Password should not empty";
      isNotEmptyPassword = false;
    }

    ///--------------------------------------validation password--------------------------------------
    if (isValidLength) {
      isValidPassword = true;
      _messagePassword = "";
    } else {
      isValidPassword = false;
    }

    ///--------------------------------------validation password--------------------------------------
  }
}
