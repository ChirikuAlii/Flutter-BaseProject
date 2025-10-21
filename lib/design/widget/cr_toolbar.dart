import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';

class CRToolbar extends StatefulWidget {
  CRToolbar({
    super.key,
    required this.title,
    this.onBack,
    this.style,
    this.iconColor,
    this.backgroundColor,
  });

  String title;
  Function? onBack;
  TextStyle? style;
  Color? iconColor;
  Color? backgroundColor;
  @override
  State<CRToolbar> createState() => _CRToolbarState();
}

class _CRToolbarState extends State<CRToolbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? Colors.white,
      width: Adaptive.of(context).totalWidth,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          //IconButton(icon: Icon(Icons.arrow_back), onPressed: () {},)
          Container(
            width: Adaptive.of(context).totalWidth,
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              widget.title,
              style: widget.style ?? CRTextStyleKey.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: widget.iconColor,
                    ),
                    onPressed:
                        widget.onBack != null ? () => widget.onBack!() : null,
                  )),
              Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      if (widget.onBack != null) {
                        widget.onBack!();
                      }
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
