import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';

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
      CRTextStyle.body2.modify(color: CRColors.primary);

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
