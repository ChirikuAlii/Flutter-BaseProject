import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';

class CRToolbar2 extends StatefulWidget {
  CRToolbar2({super.key, required this.title, this.onBack});

  String title;
  Function? onBack;
  @override
  State<CRToolbar2> createState() => _CRToolbar2State();
}

class _CRToolbar2State extends State<CRToolbar2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Adaptive.of(context).totalWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 8),
          //IconButton(icon: Icon(Icons.arrow_back), onPressed: () {},)
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
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
          SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              widget.title,
              style: CRTextStyle.headline5,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
