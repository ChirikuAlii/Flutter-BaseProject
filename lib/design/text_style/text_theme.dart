import "package:flutter/material.dart";
import "package:flutter_base_project/design/colors/colors.dart";
import "package:flutter_base_project/design/text_style/text_style.dart";

class CRTextTheme {
  static TextTheme CRDarkTextTheme = TextTheme(
    displayLarge: CRTextStyle.headline1.modify(color: CRColors.white),
    displayMedium: CRTextStyle.headline2.modify(color: CRColors.white),
    displaySmall: CRTextStyle.headline3.modify(color: CRColors.white),
    headlineMedium: CRTextStyle.headline4.modify(color: CRColors.white),
    headlineSmall: CRTextStyle.headline5.modify(color: CRColors.white),
    titleLarge: CRTextStyle.headline6.modify(color: CRColors.white),
    titleMedium: CRTextStyle.subtitle1.modify(color: CRColors.white),
    titleSmall: CRTextStyle.subtitle2.modify(color: CRColors.white),
    bodyLarge: CRTextStyle.body1.modify(color: CRColors.white),
    bodyMedium: CRTextStyle.body2.modify(color: CRColors.white),
    bodySmall: CRTextStyle.caption.modify(color: CRColors.white),
    labelLarge: CRTextStyle.button.modify(color: CRColors.white),
    labelSmall: CRTextStyle.overline.modify(color: CRColors.white),
  );

  static TextTheme CRLightTextTheme = TextTheme(
    displayLarge: CRTextStyle.headline1.modify(color: CRColors.black),
    displayMedium: CRTextStyle.headline2.modify(color: CRColors.black),
    displaySmall: CRTextStyle.headline3.modify(color: CRColors.black),
    headlineMedium: CRTextStyle.headline4.modify(color: CRColors.black),
    headlineSmall: CRTextStyle.headline5.modify(color: CRColors.black),
    titleLarge: CRTextStyle.headline6.modify(color: CRColors.black),
    titleMedium: CRTextStyle.subtitle1.modify(color: CRColors.black),
    titleSmall: CRTextStyle.subtitle2.modify(color: CRColors.black),
    bodyLarge: CRTextStyle.body1.modify(color: CRColors.black),
    bodyMedium: CRTextStyle.body2.modify(color: CRColors.black),
    bodySmall: CRTextStyle.caption.modify(color: CRColors.black),
    labelLarge: CRTextStyle.button.modify(color: CRColors.black),
    labelSmall: CRTextStyle.overline.modify(color: CRColors.black),
  );
}
