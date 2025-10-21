import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/values/images/images_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CRSearchField extends StatefulWidget {
  CRSearchField({
    super.key,
    this.colorHintAndLabel,
    this.colorBorder,
    this.colorBackground,
    this.colorText,
    this.hintText,
    this.endIcon,
    this.focusNode,
  });

  Color? colorHintAndLabel;
  Color? colorBorder;
  Color? colorBackground;
  Color? colorText;
  String? hintText;
  String? endIcon;

  FocusNode? focusNode;

  Function? onSubmit = (String value) {};

  @override
  State<CRSearchField> createState() => _CRSearchFieldState();
}

class _CRSearchFieldState extends State<CRSearchField> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 0),
      decoration: BoxDecoration(
        color: widget.colorBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: widget.colorBorder ?? Colors.transparent),
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              focusNode: widget.focusNode,
              controller: _textEditingController,
              style: CRTextStyleKey.body2.modify(
                color: widget.colorText,
              ),
              onSubmitted: (String value) {
                widget.onSubmit!(value);
              },
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: widget.colorHintAndLabel,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                    bottom: Adaptive.of(context).heightDesign(10)),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {
              _textEditingController.clear();
            },
            // child: SvgPicture.asset(
            //   CRIcons.cancel,
            // )
          ),
        ],
      ),
    );
  }
}
