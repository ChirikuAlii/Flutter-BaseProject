import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';
import 'package:flutter_base_project/design/widget/cr_text_field.dart';

class CRRegisterForms extends StatefulWidget {
  CRRegisterForms({super.key, this.onChanged});

//form apa saja dan validatornya apa masing2

//logic nextnya sesuai urutannya

  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeName = FocusNode();
  final FocusNode _focusNodePhone = FocusNode();
  final FocusNode _focusNodeConfirmPassword = FocusNode();

  Function(
          bool isValidEmail,
          bool isValidPassword,
          bool isValidPhone,
          bool isValidConfirmPassword,
          bool isValidName,
          String email,
          String password,
          String phone,
          String confirmPassword,
          String name)? onChanged =
      (isValidEmail, isValidPassword, isValidPhone, isValidConfirmPassword,
          isValidName, email, password, phone, confirmPassword, name) {};

  @override
  State<CRRegisterForms> createState() => _CRRegisterFormsState();
}

class _CRRegisterFormsState extends State<CRRegisterForms> {
  bool? isValidEmail = false;
  bool? isValidPassword = false;
  bool? isValidConfirmPassword = false;
  bool? isValidName = false;
  bool? isValidPhone = false;

  String _messageEmail = "";
  String _messagePassword = "";
  String _messageConfirmPassword = "";
  String _messageName = "";
  String _messagePhone = "";

  String _emailValue = "";
  String _passwordValue = "";
  String _nameValue = "";
  String _phoneValue = "";
  String _confirmPasswordValue = "";

  StatusField _statusFieldEmail = StatusField.none;
  StatusField _statusFieldPassword = StatusField.none;
  StatusField _statusFieldName = StatusField.none;
  StatusField _statusFieldPhone = StatusField.none;
  StatusField _statusFieldConfirmPassword = StatusField.none;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CRTextField(
          validatorType: ValidatorType.none,
          focusNode: widget._focusNodeName,
          styleField: StyleField.underline,
          colorText: CRColors.black,
          colorHintAndLabel: CRColors.grey2,
          hintText: "Nama Lengkap",
          textSize: 16,
          onChanged: (String value) {
            _nameValue = value;
            setState(() {
              _runValidationName(value);
              if (widget.onChanged != null) {
                widget.onChanged!(
                    isValidEmail ?? false,
                    isValidPassword ?? false,
                    isValidPhone ?? false,
                    isValidConfirmPassword ?? false,
                    isValidName ?? false,
                    _emailValue,
                    _passwordValue,
                    _phoneValue,
                    _confirmPasswordValue,
                    _nameValue);
                _setStatusFieldName();
              }
            });
          },
          onSubmit: () {
            widget._focusNodePhone.requestFocus();
          },
          statusField: _statusFieldName,
          message: _messageName,
        ),
        const SizedBox(height: 24),
        CRTextField(
          validatorType: ValidatorType.none,
          hintText: "No. Telepon",
          focusNode: widget._focusNodePhone,
          styleField: StyleField.underline,
          colorText: CRColors.black,
          colorHintAndLabel: CRColors.grey2,
          onChanged: (String value) {
            _phoneValue = value;
            setState(() {
              _runValidationPhone(value);
              if (widget.onChanged != null) {
                widget.onChanged!(
                    isValidEmail ?? false,
                    isValidPassword ?? false,
                    isValidPhone ?? false,
                    isValidConfirmPassword ?? false,
                    isValidName ?? false,
                    _emailValue,
                    _passwordValue,
                    _phoneValue,
                    _confirmPasswordValue,
                    _nameValue);
                _setStatusFieldPhone();
              }
            });
          },
          onSubmit: () {
            widget._focusNodeEmail.requestFocus();
          },
          statusField: _statusFieldPhone,
          message: _messagePhone,
        ),
        const SizedBox(height: 24),
        CRTextField(
          validatorType: ValidatorType.email,
          focusNode: widget._focusNodeEmail,
          styleField: StyleField.underline,
          colorText: CRColors.black,
          colorHintAndLabel: CRColors.grey2,
          onChanged: (String value) {
            _emailValue = value;
            setState(() {
              _runValidationEmail(value);
              if (widget.onChanged != null) {
                widget.onChanged!(
                    isValidEmail ?? false,
                    isValidPassword ?? false,
                    isValidPhone ?? false,
                    isValidConfirmPassword ?? false,
                    isValidName ?? false,
                    _emailValue,
                    _passwordValue,
                    _phoneValue,
                    _confirmPasswordValue,
                    _nameValue);
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
          styleField: StyleField.underline,
          colorText: CRColors.black,
          colorHintAndLabel: CRColors.grey2,
          onChanged: (String value) {
            _passwordValue = value;
            setState(() {
              _runValidationPassword(value);
              if (widget.onChanged != null) {
                widget.onChanged!(
                    isValidEmail ?? false,
                    isValidPassword ?? false,
                    isValidPhone ?? false,
                    isValidConfirmPassword ?? false,
                    isValidName ?? false,
                    _emailValue,
                    _passwordValue,
                    _phoneValue,
                    _confirmPasswordValue,
                    _nameValue);
                _setStatusFieldPassword();
              }
            });
          },
          onSubmit: () {
            //close keyboard
            widget._focusNodeConfirmPassword.requestFocus();
          },
          statusField: _statusFieldPassword,
          message: _messagePassword,
        ),
        const SizedBox(height: 24),
        CRTextField(
          validatorType: ValidatorType.confirmPassword,
          focusNode: widget._focusNodeConfirmPassword,
          colorText: CRColors.black,
          colorHintAndLabel: CRColors.grey2,
          styleField: StyleField.underline,
          onChanged: (String value) {
            _confirmPasswordValue = value;
            setState(() {
              _runValidationConfirmPassword(value);
              if (widget.onChanged != null) {
                widget.onChanged!(
                    isValidEmail ?? false,
                    isValidPassword ?? false,
                    isValidPhone ?? false,
                    isValidConfirmPassword ?? false,
                    isValidName ?? false,
                    _emailValue,
                    _passwordValue,
                    _phoneValue,
                    _confirmPasswordValue,
                    _nameValue);
                _setStatusFieldConfirmPassword();
              }
            });
          },
          onSubmit: () {
            //close keyboard
            widget._focusNodeEmail.unfocus();
            widget._focusNodePassword.unfocus();
            widget._focusNodeConfirmPassword.unfocus();
            widget._focusNodeName.unfocus();
            widget._focusNodePhone.unfocus();
          },
          statusField: _statusFieldConfirmPassword,
          message: _messageConfirmPassword,
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

  void _setStatusFieldConfirmPassword() {
    if (isValidConfirmPassword ?? false) {
      _statusFieldConfirmPassword = StatusField.success;
    } else {
      _statusFieldConfirmPassword = StatusField.error;
    }
  }

  void _setStatusFieldName() {
    if (isValidName ?? false) {
      _statusFieldName = StatusField.success;
    } else {
      _statusFieldName = StatusField.error;
    }
  }

  void _setStatusFieldPhone() {
    if (isValidPhone ?? false) {
      _statusFieldPhone = StatusField.success;
    } else {
      _statusFieldPhone = StatusField.error;
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

  void _runValidationName(String name) {
    _messageName = "";
    if (name.isNotEmpty) {
      isValidName = true;
      _messageName = "";
    } else {
      _messageName = "${_messageName}Name is not valid";
      isValidName = false;
    }
  }

  void _runValidationPhone(String phone) {
    _messagePhone = "";
    if (phone.isNotEmpty) {
      isValidPhone = true;
      _messagePhone = "";
    } else {
      _messagePhone = "${_messagePhone}Phone is not valid";
      isValidPhone = false;
    }
  }

  void _runValidationConfirmPassword(String confirmPassword) {
    _confirmPasswordValue = confirmPassword;
    _messageConfirmPassword = "";
    if (_passwordValue == _confirmPasswordValue) {
      isValidConfirmPassword = true;
      _messageConfirmPassword = "";
    } else {
      _messageConfirmPassword = "${_messageConfirmPassword}Password not same";
      isValidConfirmPassword = false;
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
