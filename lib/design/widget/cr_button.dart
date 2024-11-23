//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/images/images.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ButtonType { filled, outline }

class CRButton extends StatefulWidget {
  CRButton(
      {super.key,
      this.text,
      this.isDisable,
      this.onPressed,
      this.isLoading,
      this.width,
      this.height,
      this.radius,
      this.textColor,
      this.color,
      this.loadingColor,
      this.borderColor,
      this.buttonType,
      this.startIcon});

  String? text = "";
  bool? isDisable = false;
  bool? isLoading = false;
  Function? onPressed = () {};
  double? width = 0;
  double? height = 0;
  double? radius = 14;
  Color? color = CRColors.primary;
  Color? textColor = CRColors.white;
  Color? loadingColor = CRColors.white;
  Color? borderColor = CRColors.primary;
  ButtonType? buttonType = ButtonType.filled;
  String? startIcon = "";

  @override
  State<CRButton> createState() => _CRButtonState();
}

class _CRButtonState extends State<CRButton> {
  //isLoading on press on press  disable (tapi tampilan berubah)
//isLoading on press kosong
//if isLoading -> onPress kosong
  //disabel = on press kosong
  Function? _setPressesButton() {
    if (widget.isDisable ?? false) {
      return null;
    } else {
      if (widget.isLoading ?? false) {
        return null;
      } else {
        return widget.onPressed;
      }
      return () {};
    }
  }

  var stateController = WidgetStatesController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: widget.buttonType == ButtonType.filled
              ? FilledButton(
                  onPressed: widget.isDisable ?? false
                      ? null
                      : widget.isLoading ?? false
                          ? () {}
                          : () {
                              if (widget.onPressed != null) {
                                widget.onPressed!();
                              }
                            },
                  style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(
                          color: widget.borderColor ??
                              widget.borderColor ??
                              CRColors.primary)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(widget.radius ?? 14))),
                      backgroundColor:
                          WidgetStateProperty.resolveWith((states) {
                        if (states.contains(WidgetState.disabled)) {
                          return CRColors.greyDisableButton;
                        } else {
                          return widget.color;
                        }
                      })),
                  statesController: stateController,
                  child: widget.isLoading ?? false
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(widget.startIcon ?? ""),
                            Container(
                                margin: EdgeInsets.only(
                                    left: widget.startIcon != ""
                                        ? Adaptive.of(context).widthDesign(8)
                                        : 0),
                                child: Text(widget.text ?? "",
                                    style: CRTextStyle.button
                                        .modify(color: widget.textColor))),
                          ],
                        ),
                )
              : OutlinedButton(
                  onPressed: widget.isDisable ?? false
                      ? null
                      : widget.isLoading ?? false
                          ? () {}
                          : () {
                              if (widget.onPressed != null) {
                                widget.onPressed!();
                              }
                            },
                  style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(
                          color: widget.borderColor ??
                              widget.borderColor ??
                              CRColors.primary)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(widget.radius ?? 14))),
                      backgroundColor:
                          WidgetStateProperty.resolveWith((states) {
                        if (states.contains(WidgetState.disabled)) {
                          return CRColors.greyDisableButton;
                        } else {
                          return widget.color;
                        }
                      })),
                  statesController: stateController,
                  child: widget.isLoading ?? false
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              widget.startIcon ?? "",
                              width: 24,
                              height: 24,
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: widget.startIcon != ""
                                        ? Adaptive.of(context).widthDesign(8)
                                        : 0),
                                child: Text(widget.text ?? "",
                                    style: CRTextStyle.button
                                        .modify(color: widget.textColor))),
                          ],
                        ),
                ),
        ),
        widget.isLoading ?? false
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: widget.loadingColor,
                ),
              )
            : Container(),
      ],
    );
  }
}
