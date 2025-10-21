import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
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
                          colors: [
                            CRColorsDefault.primary,
                            CRColorsDefault.primary
                          ])),
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
                          style: CRTextStyleKey.body2.modify(
                              color: CRColorsDefault.white, fontSize: 11),
                        ))),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.only(right: 8),
                child: Ink(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CRColorsDefault.white,
                      border: Border.all(color: CRColorsDefault.primary)),
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
                          style: CRTextStyleKey.body2.modify(
                              color: CRColorsDefault.black, fontSize: 11),
                        ))),
                  ),
                ),
              ));
  }
}
