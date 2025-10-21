import "package:flutter/material.dart";

class CRColorsDefault {
  static const Color primary = Color(0xff1A998E);
  static const Color primaryBlue = Color(0xff157A72);

  static const Color primaryLight = Color(0xFF0296E5);

  static const Color secondary = Color(0xFF176B87);

  static const Color error = Color(0xFFF75555);
  static const Color red1 = Color(0xFFED6F6A);
  static const Color red2 = Color(0xFFFFEBEB);

  static const Color info1 = Color(0xFFCDF3FE);
  static const Color info2 = Color(0xFF68CAFC);
  static const Color info3 = Color(0xFF078BF7);
  static const Color info4 = Color(0xFF0450B0);
  static const Color info5 = Color(0xFF012877);

  static const Color success1 = Color(0xFFF0FBD3);
  static const Color success2 = Color(0xFFC0EA7A);
  static const Color success3 = Color(0xFF76BF28);
  static const Color success4 = Color(0xFF458814);
  static const Color success5 = Color(0xFF215B07);

  static const Color warning1 = Color(0xFFFFF9D5);
  static const Color warning2 = Color(0xFFFFE882);
  static const Color warning3 = Color(0xFFFFCD2C);
  static const Color warning4 = Color(0xFFB78A15);
  static const Color warning5 = Color(0xFF7A5409);

  static const Color danger1 = Color(0xFFFEE6D6);
  static const Color danger2 = Color(0xFFFE9F81);
  static const Color danger3 = Color(0xFFFF3E2F);
  static const Color danger4 = Color(0xFFB61827);
  static const Color danger5 = Color(0xFF7A0927);

  static const Color black1 = Color(0xFF323232); //black

  static const Color grey1 = Color(0xFF9095A6);
  static const Color grey2 = Color(0xFFCECECE);
  static const Color grey3 = Color(0xFFD9D9D9);
  static const Color grey14 = Color(0xFF858586);
  static const Color grey16 = Color(0xFFE4E8EE);

  static const Color white2 = Color(0xFFFBFCFE); //white
  static const Color white3 = Color(0xFFFBFCFE);

  static const Color bottomNavBackground = Color(0xFFFFFFFF);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color dark1 = Color(0xFF181A20);
  static const Color blue6 = Color(0xFFEBF6FF);

  static const Color green1 = Color(0xFF009951);

  static const Color yellow1 = Color(0xFFFFDD00);

  ///Temp
  static const Color black2 = Color(0xFF242424);
  static const Color black3 = Color(0xFF1b1a1f);
  static const Color black4 = Color(0xFF131313);
  static const Color black5 = Color(0xFF222222);

  static const Color blue2 = Color(0xFF3C8FE1);
  static const Color blue3 = Color(0xFFEEF6FD);
  static const Color blue4 = Color(0xFF197BC0);
  static const Color blue5 = Color(0xFF409CDD);
  static const Color blue7 = Color(0xFFE0F0FE);

  static const Color grey = Color(0xFFE2E2E2);
  static const Color greyscale1 = Color(0xFF212121);

  static const Color grey4 = Color(0xFFE7EAED);
  static const Color grey5 = Color(0xFFE0E0E0);
  static const Color grey6 = Color(0xFF474747);
  static const Color grey7 = Color(0xFF7B7B7B);
  static const Color grey8 = Color(0xFFF2F2F2);
  static const Color grey9 = Color(0xFFE3E3E3);
  static const Color grey15 = Color(0xFF828282);

  static const Color grey10 = Color(0xFF80919E);
  static const Color grey11 = Color(0xFFD9D9D9);
  static const Color grey12 = Color(0xFF979797);
  static const Color grey13 = Color(0xFF5C5C5C);

  static const Color greyStrong = Color(0xFF494949);
  static const Color greyVerySoft = Color(0xFFEAEAEA);
  static const Color greySoft = Color(0xFF717171);

  static const Color green = Color(0xFF22FF00);
  static const Color green2 = Color(0xFFE5F3F1);
  static const Color green3 = Color(0xFF008471);

  static const Color blue1 = Color(0xFF79C0FF);

  static const Color greyDisableButton = Color(0xFFE3DFE3);

  static const purple2 = Color(0xFF5139BD);

  static const ColorScheme kcLightScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: white,
    //primaryContainer: Color(0xFF1A998E),
    //onPrimaryContainer: white,
    secondary: secondary,
    onSecondary: black,
    //secondaryContainer: Color(0xFFD6E3FF),
    //onSecondaryContainer: Color(0xFF001B3E),
    //tertiary: Color(0xFF006399),
    //onTertiary: Color(0xFFFFFFFF),
    //tertiaryContainer: Color(0xFFCDE5FF),
    //onTertiaryContainer: Color(0xFF001D32),
    error: error,
    //errorContainer: Color(0xFFFFDAD6),
    onError: white,
    //onErrorContainer: Color(0xFF410002),
    background: white,
    onBackground: black,
    surface: white,
    onSurface: black,
    //surfaceVariant: Color(0xFFDEE3EB),
    //onSurfaceVariant: Color(0xFF42474E),
    //outline: Color(0xFF72777F),
    //onInverseSurface: Color(0xFFF0F0F4),
    //inverseSurface: Color(0xFF2F3033),
    //shadow: Color(0xFF000000),
    //surfaceTint: Color(0xFF006399),
  );

  static const ColorScheme kcDarkScheme = ColorScheme.dark(
    brightness: Brightness.dark,
    primary: primary,
    onPrimary: dark1,
    //primaryContainer: Color(0xFF004A75),
    //onPrimaryContainer: Color(0xFFCDE5FF),
    secondary: secondary,
    onSecondary: white,
    //secondaryContainer: Color(0xFF00458D),
    //onSecondaryContainer: Color(0xFFD6E3FF),
    //tertiary: Color(0xFF95CCFF),
    //onTertiary: Color(0xFF003352),
    //tertiaryContainer: Color(0xFF004A75),
    //onTertiaryContainer: Color(0xFFCDE5FF),
    error: error,
    //errorContainer: Color(0xFF93000A),
    onError: white,
    //onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1A1C),
    onBackground: Color(0xFFE2E2E5),
    surface: Color(0xFF1A1C1E),
    onSurface: Color(0xFFE2E2E5),
    //surfaceVariant: Color(0xFF42474E),
    //onSurfaceVariant: Color(0xFFC2C7CF),
    //outline: Color(0xFF8C9198),
    //onInverseSurface: Color(0xFF1A1C1E),
    //inverseSurface: Color(0xFFE2E2E5),
    //inversePrimary: Color(0xFF006399),
    //shadow: Color(0xFF000000),
    //surfaceTint: Color(0xFF95CCFF),
  );
}
