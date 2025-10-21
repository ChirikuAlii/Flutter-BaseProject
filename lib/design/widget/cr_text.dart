import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';

class CRText extends StatefulWidget {
  CRText(
      {super.key,
      required this.text,
      this.style,
      this.onTap,
      this.textAlign,
      this.maxLines});

  String text = "";
  TextStyle? style;
  Function? onTap;
  TextAlign? textAlign;
  int? maxLines;
  @override
  State<CRText> createState() => _CRTextState();
}

class _CRTextState extends State<CRText> {
  final TextStyle? _defaultStyle =
      CRTextStyleKey.body2.modify(color: CRColorsDefault.primary);

  @override
  void initState() {
    setState(() {
      //widget.style = CRTextStyle.body2.modify(color: CRColors.primary);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap != null ? () => widget.onTap!() : null,
      child: Text(widget.text,
          maxLines: widget.maxLines,
          textAlign: widget.textAlign,
          style: widget.style ?? _defaultStyle),
    );
  }
}
