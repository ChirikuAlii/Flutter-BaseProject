import "package:flutter/material.dart";
import "package:flutter_base_project/design/values/typography/fonts_key.dart";
import "package:flutter_base_project/design/values/size/size_text_key.dart";

class CRTextStyleKey {
  /// TextTheme uses at [CRTextTheme]
  static const TextStyle headline1 = TextStyle(
      fontSize: kSizeTitle1,
      fontWeight: FontWeight.w800,
      letterSpacing: kSpacingTitle1,
      fontFamily: CRFontFamily.inter);

  static const TextStyle headline2 = TextStyle(
      fontSize: kSizeTitle2,
      fontWeight: FontWeight.w700,
      letterSpacing: kSpacingTitle2,
      fontFamily: CRFontFamily.inter);

  static const TextStyle headline3 = TextStyle(
      fontSize: kSizeTitle3,
      fontWeight: FontWeight.w600,
      letterSpacing: kSpacingTitle3,
      fontFamily: CRFontFamily.inter);

  static const TextStyle headline4 = TextStyle(
      fontSize: kSizeTitle4,
      fontWeight: FontWeight.w700,
      letterSpacing: kSpacingTitle4,
      fontFamily: CRFontFamily.inter);

  static const TextStyle headline5 = TextStyle(
      fontSize: kSizeTitle5,
      fontWeight: FontWeight.w500,
      letterSpacing: kSpacingTitle5,
      fontFamily: CRFontFamily.inter);

  static const TextStyle headline6 = TextStyle(
      fontSize: kSizeTitle6,
      fontWeight: FontWeight.w700,
      letterSpacing: kSpacingTitle6,
      fontFamily: CRFontFamily.inter);

  static const TextStyle subtitle1 = TextStyle(
      fontSize: kSizeTitle7,
      fontWeight: FontWeight.w500,
      letterSpacing: kSpacingTitle7,
      fontFamily: CRFontFamily.inter);

  static const TextStyle subtitle2 = TextStyle(
      fontSize: kSizeTitle8,
      fontWeight: FontWeight.w700,
      letterSpacing: kSpacingTitle8,
      fontFamily: CRFontFamily.inter);

  static const TextStyle body1 = TextStyle(
      fontSize: kSizeBody1,
      fontWeight: FontWeight.w500,
      letterSpacing: kSpacingBody1,
      fontFamily: CRFontFamily.inter);

  static const TextStyle body2 = TextStyle(
    fontSize: kSizeBody2,
    fontWeight: FontWeight.w400,
    letterSpacing: kSpacingBody2,
    fontFamily: CRFontFamily.inter,
  );

  static const TextStyle caption = TextStyle(
      fontSize: kSizeCaption1,
      fontWeight: FontWeight.w500,
      letterSpacing: kSpacingCaption1,
      fontFamily: CRFontFamily.inter);

  static const TextStyle button = TextStyle(
      fontSize: kSizeButton,
      fontWeight: FontWeight.w600,
      letterSpacing: kSpacingButton,
      fontFamily: CRFontFamily.inter);

  static const TextStyle overline = TextStyle(
      fontSize: kSizeOverline,
      fontWeight: FontWeight.w400,
      letterSpacing: kSpacingOverline,
      fontFamily: CRFontFamily.inter);
}

extension CRTextStyleExt on TextStyle {
  TextStyle? modify(
      {FontWeight? fontWeight,
      double? fontSize,
      String? fontFamily,
      Color? color,
      Paint? foreground,
      double? height,
      TextDecoration? decoration,
      Color? decorationColor}) {
    final FontWeight? fontWeightParam = fontWeight ?? this.fontWeight;
    final double? fontSizeParam = fontSize ?? this.fontSize;
    final String? fontFamilyParam = fontFamily ?? this.fontFamily;
    final Color? colorParam = color ?? this.color;
    final Paint? foregroundParam = foreground;
    final TextDecoration? decorationParam = decoration ?? this.decoration;
    final Color? decorationColorParam = decorationColor ?? this.decorationColor;
    final double? heightParam = height ?? this.height;

    return copyWith(
        fontSize: fontSizeParam,
        fontWeight: fontWeightParam,
        fontFamily: fontFamilyParam,
        color: colorParam,
        foreground: foregroundParam,
        decoration: decorationParam,
        decorationColor: decorationColorParam,
        height: heightParam);
  }
}
