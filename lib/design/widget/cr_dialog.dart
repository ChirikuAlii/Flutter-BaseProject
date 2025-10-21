import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/design/widget/cr_button.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';

class CRDialog extends StatefulWidget {
  CRDialog({super.key, this.title, this.description, this.onPositivePressed});

  String? title = "";
  String? description = "";
  Function? onPositivePressed = () {};
  @override
  State<CRDialog> createState() => _CRDialogState();
}

class _CRDialogState extends State<CRDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(18),
          color: CRColorsDefault.white,
        ),
        width: Adaptive.of(context).totalWidth,
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CRText(
                  text: widget.title ?? "",
                  style: CRTextStyleKey.headline2
                      .modify(color: CRColorsDefault.primary)),
              const SizedBox(
                height: 24,
              ),
              CRText(
                text: widget.description ?? "",
                style:
                    CRTextStyleKey.body2.modify(color: CRColorsDefault.black),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: Adaptive.of(context).totalWidth,
                  child: CRButton(
                      width: Adaptive.of(context).totalWidth,
                      height: Adaptive.of(context).heightDesign(50),
                      text: "Ok",
                      onPressed: widget.onPositivePressed ??
                          () {
                            Navigator.pop(context);
                          }))
            ],
          ),
        ),
      ),
    );
  }
}
