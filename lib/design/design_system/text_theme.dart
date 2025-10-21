import "package:flutter/material.dart";
import "package:flutter_base_project/design/values/colors/colors_default_key.dart";
import "package:flutter_base_project/design/design_system/text_style_key.dart";

class CRTextThemeMaterial {
  static TextTheme CRDarkTextTheme = TextTheme(
    displayLarge: CRTextStyleKey.headline1.modify(color: CRColorsDefault.white),
    displayMedium:
        CRTextStyleKey.headline2.modify(color: CRColorsDefault.white),
    displaySmall: CRTextStyleKey.headline3.modify(color: CRColorsDefault.white),
    headlineMedium:
        CRTextStyleKey.headline4.modify(color: CRColorsDefault.white),
    headlineSmall:
        CRTextStyleKey.headline5.modify(color: CRColorsDefault.white),
    titleLarge: CRTextStyleKey.headline6.modify(color: CRColorsDefault.white),
    titleMedium: CRTextStyleKey.subtitle1.modify(color: CRColorsDefault.white),
    titleSmall: CRTextStyleKey.subtitle2.modify(color: CRColorsDefault.white),
    bodyLarge: CRTextStyleKey.body1.modify(color: CRColorsDefault.white),
    bodyMedium: CRTextStyleKey.body2.modify(color: CRColorsDefault.white),
    bodySmall: CRTextStyleKey.caption.modify(color: CRColorsDefault.white),
    labelLarge: CRTextStyleKey.button.modify(color: CRColorsDefault.white),
    labelSmall: CRTextStyleKey.overline.modify(color: CRColorsDefault.white),
  );

  static TextTheme CRLightTextTheme = TextTheme(
    displayLarge: CRTextStyleKey.headline1.modify(color: CRColorsDefault.black),
    displayMedium:
        CRTextStyleKey.headline2.modify(color: CRColorsDefault.black),
    displaySmall: CRTextStyleKey.headline3.modify(color: CRColorsDefault.black),
    headlineMedium:
        CRTextStyleKey.headline4.modify(color: CRColorsDefault.black),
    headlineSmall:
        CRTextStyleKey.headline5.modify(color: CRColorsDefault.black),
    titleLarge: CRTextStyleKey.headline6.modify(color: CRColorsDefault.black),
    titleMedium: CRTextStyleKey.subtitle1.modify(color: CRColorsDefault.black),
    titleSmall: CRTextStyleKey.subtitle2.modify(color: CRColorsDefault.black),
    bodyLarge: CRTextStyleKey.body1.modify(color: CRColorsDefault.black),
    bodyMedium: CRTextStyleKey.body2.modify(color: CRColorsDefault.black),
    bodySmall: CRTextStyleKey.caption.modify(color: CRColorsDefault.black),
    labelLarge: CRTextStyleKey.button.modify(color: CRColorsDefault.black),
    labelSmall: CRTextStyleKey.overline.modify(color: CRColorsDefault.black),
  );
}
