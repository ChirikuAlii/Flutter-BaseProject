import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';

class CRChips extends StatelessWidget {
  const CRChips(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isSelected});

  final Function(String text) onTap;
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: Adaptive.of(context).widthDesign(50), minHeight: 20),
        child: isSelected
            ? Container(
                margin: const EdgeInsets.only(right: 8),
                child: Ink(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          begin: AlignmentDirectional.topCenter,
                          end: AlignmentDirectional.bottomCenter,
                          colors: [CRColors.primary, CRColors.primary])),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onTap: () {
                      onTap(text);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        child: Center(
                            child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: CRTextStyle.body2
                              .modify(color: CRColors.white, fontSize: 11),
                        ))),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.only(right: 8),
                child: Ink(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CRColors.white,
                      border: Border.all(color: CRColors.primary)),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onTap: () {
                      onTap(text);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        child: Center(
                            child: Text(
                          text,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: CRTextStyle.body2
                              .modify(color: CRColors.black, fontSize: 11),
                        ))),
                  ),
                ),
              ));
  }
}
