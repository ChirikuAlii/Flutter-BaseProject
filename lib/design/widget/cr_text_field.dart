import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/images/images.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum StatusField { success, error, none }

enum StateField { active, inactive, none }

enum ValidatorType { email, password, confirmPassword, none, number }

enum StyleField { border, underline, filled }

enum EndIconBehavior {
  showPassword,
  showStatus,
}

class ColorCRStyleField {
  ColorCRStyleField({
    this.activeColorBorder,
    this.activeColorBackground,
    this.activeTextColor,
    this.inactiveColorBorder,
    this.inactiveColorBackground,
    this.inactiveTextColor,
  });

  Color? activeColorBorder;
  Color? activeColorBackground;
  Color? activeTextColor;
  Color? inactiveColorBorder;
  Color? inactiveColorBackground;
  Color? inactiveTextColor;
}

class CRTextField extends StatefulWidget {
  CRTextField(
      {super.key,
      this.statusField,
      this.styleField,
      this.validatorType,
      this.onChanged,
      this.focusNode,
      this.onSubmit,
      this.message,
      this.initialText,
      this.colorHintAndLabel,
      this.colorText,
      this.colorEndIcon,
      this.endIconBehavior,
      this.textSize,
      this.hintAndLabelSize,
      this.stateField,
      this.colorCRStyleField,
      this.hintText,
      this.controller,
      this.colorFilled});

  String? message = "";
  String? initialText = "";
  String? hintText;

  bool? secureText = false;
  StatusField? statusField = StatusField.none;
  StateField? stateField = StateField.none;
  StyleField? styleField = StyleField.border;
  ValidatorType? validatorType = ValidatorType.none;
  EndIconBehavior? endIconBehavior = EndIconBehavior.showStatus;
  Color? colorHintAndLabel = CRColors.white;
  Color? colorText = CRColors.white;
  Color? colorEndIcon = CRColors.white;
  ColorCRStyleField? colorCRStyleField = ColorCRStyleField(
    activeColorBorder: CRColors.blue2,
    activeColorBackground: CRColors.blue3,
    activeTextColor: CRColors.black,
    inactiveColorBorder: CRColors.grey9,
    inactiveColorBackground: CRColors.greyVerySoft,
    inactiveTextColor: CRColors.grey9,
  );
  Color? colorFilled = CRColors.purple2;
  double? textSize = 14;
  double? hintAndLabelSize = 14;
  Function? onChanged = () {};
  Function? onSubmit = () {};
  FocusNode? focusNode;
  TextEditingController? controller;

  //active
  //border color ,background color ,text color
  //inactive

  @override
  State<CRTextField> createState() => _CRTextFieldState();
}

class _CRTextFieldState extends State<CRTextField> {
  late TextEditingController _textEditingController;

  bool _secureText = false;
  final bool _isMessageVisible = false;

  @override
  void initState() {
    _textEditingController = widget.controller ?? TextEditingController();
    _secureText = widget.secureText ?? false;
    _textEditingController.text = widget.initialText ?? "";
    widget.focusNode ??= FocusNode();
    super.initState();
  }

  void setStatusField(StatusField statusField) {
    setState(() {
      widget.statusField = statusField;
    });
  }

  void setValidatorType(ValidatorType validatorType) {
    setState(() {
      widget.validatorType = validatorType;
    });
  }

  Widget _setStartIcon(ValidatorType validatorType) {
    if (widget.validatorType == ValidatorType.none) {
      return Container();
    } else if (widget.validatorType == ValidatorType.email) {
      return Container();
    } else if (widget.validatorType == ValidatorType.password ||
        widget.validatorType == ValidatorType.confirmPassword) {
      return Container();
    } else {
      ListView.builder(
        itemBuilder: (context, index) {
          return Container();
        },
      );
      return Container();
    }
  }

  Widget? Function(int tes) test() {
    return (int tes) {
      return Container();
    };
  }

  Widget _setEndIcon(EndIconBehavior endIconBehavior, StatusField statusField) {
    if (endIconBehavior == EndIconBehavior.showPassword) {
      return InkWell(
        child: Container(),
        onTap: () {
          setState(() {
            _secureText = !_secureText;
          });
        },
      );
    } else if (endIconBehavior == EndIconBehavior.showStatus) {
      if (statusField == StatusField.none) {
        return Container();
      } else if (statusField == StatusField.success) {
        return Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(
              CRIcons.bookmark,
              color: widget.colorEndIcon ?? CRColors.white,
            ));
      } else if (statusField == StatusField.error) {
        return Container();
      } else {
        return Container();
      }
    } else {
      return Container();
    }
  }
  //use password show password toogle
  //use status field to show error or success

  //password true , status field true -> show password first

  //password false , status field true -> show status field end icon

  //password true , status field false -> show password first

  //if password use secure text logic
  //else if

  // Widget _setEndIcon(ValidatorType validatorType) {
  //   if (widget.validatorType == ValidatorType.password ||
  //       widget.validatorType == ValidatorType.confirmPassword) {
  //     setState(() {
  //       _secureText = true;
  //     });
  //     return InkWell(
  //       child: SvgPicture.asset(
  //           _secureText ? CRIcons.passwordShow : CRIcons.passwordHide),
  //       onTap: () {
  //         setState(() {
  //           _secureText = !_secureText;
  //         });
  //       },
  //     );
  //   } else {
  //     return Container();
  //   }
  // }

  Color _setBorderColor(StatusField statusField) {
    if (widget.statusField == StatusField.none) {
      return _setBorderStateField(
          widget.stateField ?? StateField.none, CRColors.grey9);
    } else if (widget.statusField == StatusField.error) {
      return CRColors.red1;
    } else if (widget.statusField == StatusField.success) {
      return CRColors.blue2;
    } else {
      return CRColors.grey9;
    }
  }

  Color _setBorderStateField(StateField stateField, Color defaultColor) {
    if (stateField == StateField.active) {
      return widget.colorCRStyleField?.activeColorBorder ?? CRColors.grey9;
    } else if (stateField == StateField.inactive) {
      return widget.colorCRStyleField?.inactiveColorBorder ?? CRColors.grey9;
    } else {
      return defaultColor;
    }
  }

  //TODO: set border color based on state field
  Color? _setFillColorStateField(StateField stateField, Color? defaultColor) {
    if (stateField == StateField.active) {
      return widget.colorCRStyleField?.activeColorBackground ??
          CRColors.greyVerySoft;
    } else if (stateField == StateField.inactive) {
      return widget.colorCRStyleField?.inactiveColorBackground ??
          CRColors.greyVerySoft;
    } else {
      return defaultColor;
    }
  }

  //TODO: set border color based on state field
  Color _setBackgroundColorStatusField(StatusField statusField) {
    if (widget.statusField == StatusField.none) {
      return CRColors.greyVerySoft;
    } else if (widget.statusField == StatusField.error) {
      return CRColors.red2;
    } else if (widget.statusField == StatusField.success) {
      return CRColors.blue3;
    } else {
      return CRColors.greyVerySoft;
    }
  }

  Color _setFillColor(StatusField statusField) {
    if (widget.statusField == StatusField.none) {
      return CRColors.greyVerySoft;
    } else if (widget.statusField == StatusField.error) {
      return CRColors.red2;
    } else if (widget.statusField == StatusField.success) {
      return CRColors.blue3;
    } else {
      return CRColors.greyVerySoft;
    }
  }

  bool _setMessageVisibility(StatusField statusField) {
    if (widget.statusField == StatusField.none) {
      return false;
    } else if (widget.statusField == StatusField.error) {
      return true;
    } else if (widget.statusField == StatusField.success) {
      return false;
    } else {
      return false;
    }
  }

  String? _setLabelStyle(ValidatorType validatorType, StyleField styleField) {
    if (styleField == StyleField.filled || styleField == StyleField.underline) {
      return _setHint(validatorType, hintText: widget.hintText);
    } else {
      return null;
    }
  }

  String? _setHintStyle(ValidatorType validatorType, StyleField styleField) {
    if (widget.styleField == StyleField.filled ||
        widget.styleField == StyleField.underline) {
      return null;
    } else {
      return _setHint(validatorType, hintText: widget.hintText);
    }
  }

  String _setHint(ValidatorType validatorType, {String? hintText}) {
    if (validatorType == ValidatorType.password) {
      return hintText ?? "Password";
    } else if (validatorType == ValidatorType.email) {
      return hintText ?? "Email";
    } else if (validatorType == ValidatorType.confirmPassword) {
      return hintText ?? "Confirm Password";
    } else {
      return hintText ?? "";
    }
  }

  TextInputType _setKeyboardType(ValidatorType validatorType) {
    if (validatorType == ValidatorType.email) {
      return TextInputType.emailAddress;
    } else if (validatorType == ValidatorType.number) {
      return TextInputType.number;
    } else {
      return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.focusNode?.requestFocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: widget.styleField == StyleField.underline
                ? const EdgeInsets.symmetric(horizontal: 0, vertical: 0)
                : const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              // set border style
              border: widget.styleField == StyleField.filled ||
                      widget.styleField == StyleField.underline
                  ? null
                  : Border.all(
                      color: _setBorderColor(
                          widget.statusField ?? StatusField.none)),
              // set border style
              color: widget.styleField == StyleField.filled
                  ? widget.colorFilled
                  : _setFillColorStateField(
                      widget.stateField ?? StateField.none, null),
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _setStartIcon(widget.validatorType ?? ValidatorType.none),
                    //SvgPicture.asset(CRIcons.email),
                    widget.styleField == StyleField.underline
                        ? Container()
                        : widget.styleField == StyleField.border
                            ? const SizedBox(width: 12)
                            : const SizedBox(width: 16),
                    Flexible(
                      child: TextField(
                        focusNode: widget.focusNode,
                        controller: _textEditingController,
                        obscureText: _secureText,
                        onChanged: (String value) {
                          widget.initialText = value;
                          if (widget.onChanged != null) {
                            widget.onChanged!(value);
                          }
                        },
                        onSubmitted: (String value) {
                          if (widget.onSubmit != null) {
                            widget.onSubmit!();
                          }
                        },
                        onEditingComplete: () {
                          if (widget.onSubmit != null) {
                            widget.onSubmit!();
                          }
                        },
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          isDense: true,
                          border: widget.styleField == StyleField.underline
                              ? const UnderlineInputBorder()
                              : InputBorder.none,

                          // set hint style
                          //if filled underlined use label ,hide hint

                          //check based on style field ,set color label and
                          hintText: _setHintStyle(
                              widget.validatorType ?? ValidatorType.none,
                              widget.styleField ?? StyleField.border),
                          labelText: _setLabelStyle(
                              widget.validatorType ?? ValidatorType.none,
                              widget.styleField ?? StyleField.border),
                          labelStyle: CRTextStyle.body2.modify(
                              color: widget.colorHintAndLabel ?? CRColors.white,
                              fontSize: widget.hintAndLabelSize ?? 14,
                              fontWeight:
                                  widget.styleField == StyleField.underline
                                      ? FontWeight.w500
                                      : null),
                          hintStyle: CRTextStyle.body2.modify(
                              color: widget.colorHintAndLabel ?? CRColors.white,
                              fontSize: widget.hintAndLabelSize ?? 14),
                          contentPadding: EdgeInsets.only(
                              bottom: widget.styleField == StyleField.underline
                                  ? 8
                                  : 0),
                        ),
                        style: CRTextStyle.body2.modify(
                            color: widget.colorText ?? CRColors.white,
                            fontSize: widget.textSize ?? 14),
                        cursorColor: _setBorderColor(
                            widget.statusField ?? StatusField.none),
                        keyboardType: _setKeyboardType(
                            widget.validatorType ?? ValidatorType.none),
                      ),
                    ),
                    widget.styleField == StyleField.underline
                        ? Container()
                        : const SizedBox(
                            width: 8,
                          ),

                    //SvgPicture.asset(widget.endIcon)
                  ],
                ),
                widget.styleField == StyleField.underline
                    ? _setEndIcon(
                        widget.endIconBehavior ?? EndIconBehavior.showStatus,
                        widget.statusField ?? StatusField.none)
                    : Container(),
              ],
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Visibility(
              visible:
                  _setMessageVisibility(widget.statusField ?? StatusField.none),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                  padding: widget.styleField == StyleField.underline
                      ? const EdgeInsets.only(left: 0)
                      : const EdgeInsets.only(left: 8),
                  child: Text(widget.message ?? "",
                      style: CRTextStyle.body2.modify(
                          color: _setBorderColor(
                              widget.statusField ?? StatusField.none)))))
        ],
      ),
    );
  }

  Widget _styleFieldBuilder(
      Widget Function(BuildContext context, StyleField styleField) builder) {
    //ListView.builder(itemBuilder: ,)
    return builder(context, widget.styleField ?? StyleField.border);
  }
}
