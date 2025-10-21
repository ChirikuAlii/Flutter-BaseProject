import 'dart:ui';
import 'package:flutter_base_project/design/values/colors/color_variant.dart';

class CRColorsKey {
  static const primary900 = Color(0xff1A998E);
  static const primary800 = Color(0xff31A399);
  static const primary700 = Color(0xff48ADA5);
  static const primary600 = Color(0xff5FB8B0);
  static const primary500 = Color(0xff76C2BB);
  static const primary400 = Color(0xff8DCCC7);
  static const primary300 = Color(0xffA3D6D2);
  static const primary200 = Color(0xffBAE0DD);
  static const primary100 = Color(0xffD1EBE8);
  static const primary50 = Color(0xffE8F5F4);
  static const secondary900 = Color(0xff176B87);
  static const secondary800 = Color(0xff2E7A93);
  static const secondary700 = Color(0xff45899F);
  static const secondary600 = Color(0xff5D97AB);
  static const secondary500 = Color(0xff74A6B7);
  static const secondary400 = Color(0xff8BB5C3);
  static const secondary300 = Color(0xffA2C4CF);
  static const secondary200 = Color(0xffB9D3DB);
  static const secondary100 = Color(0xffD1E1E7);
  static const secondary50 = Color(0xffE8F0F3);
  static const alertsStatusSuccess = Color(0xff12D18E);
  static const alertsStatusInfo = Color(0xff1A998E);
  static const alertsStatusWarning = Color(0xffFACC15);
  static const alertsStatusError = Color(0xffF75555);
  static const alertsStatusLightDisabled = Color(0xffD8D8D8);
  static const alertsStatusDarkDisabled = Color(0xff23252B);
  static const alertsStatusButtonDisabled = Color(0xff157A72);
  static const greyscale900 = Color(0xff212121);
  static const greyscale800 = Color(0xff424242);
  static const greyscale700 = Color(0xff616161);
  static const greyscale600 = Color(0xff757575);
  static const greyscale500 = Color(0xff9E9E9E);
  static const greyscale400 = Color(0xffBDBDBD);
  static const greyscale300 = Color(0xffE0E0E0);
  static const greyscale200 = Color(0xffEEEEEE);
  static const greyscale100 = Color(0xffF5F5F5);
  static const greyscale50 = Color(0xffFAFAFA);
  static const othersWhite = Color(0xffFFFFFF);
  static const othersBlack = Color(0xff000000);
  static const othersRed = Color(0xffF54336);
  static const othersPink = Color(0xffEA1E61);
  static const othersPurple = Color(0xff9D28AC);
  static const othersDeepPurple = Color(0xff673AB3);
  static const othersIndigo = Color(0xff3F51B2);
  static const othersBlue = Color(0xff1A96F0);
  static const othersLightBlue = Color(0xff00A9F1);
  static const othersCyan = Color(0xff00BCD3);
  static const othersTeal = Color(0xff009689);
  static const othersGreen = Color(0xff4AAF57);
  static const othersLightGreen = Color(0xff8BC255);
  static const othersLime = Color(0xffCDDC4C);
  static const othersYellow = Color(0xffFFEB4F);
  static const othersAmber = Color(0xffFFC02D);
  static const othersOrange = Color(0xffFF981F);
  static const othersDeepOrange = Color(0xffFF5726);
  static const othersBrown = Color(0xff7A5548);
  static const othersBlueGrey = Color(0xff607D8A);
  static const dark1 = Color(0xff181A20);
  static const dark2 = Color(0xff1E2025);
  static const dark3 = Color(0xff1F222A);
  static const dark4 = Color(0xff262A35);
  static const dark5 = Color(0xff35383F);
  static const backgroundTeal = Color(0xffF0FBFA);
  static const backgroundPurple = Color(0xffF8F0FE);
  static const backgroundRed = Color(0xffFFF3F3);
  static const backgroundBlue = Color(0xffF3F6FF);
  static const backgroundGreen = Color(0xffEDFBF7);
  static const backgroundBrown = Color(0xffFBF6F3);
  static const backgroundYellow = Color(0xffFFFCEB);
  static const backgroundOrange = Color(0xffFFF8EE);
  static const transparentTeal = Color(0xff1A998E14);
  static const transparentPurple = Color(0xff9610FF14);
  static const transparentRed = Color(0xffFF4A4A14);
  static const transparentBlue = Color(0xff235DFF14);
  static const transparentGreen = Color(0xff17CE9214);
  static const transparentBrown = Color(0xffA4634D14);
  static const transparentYellow = Color(0xffFFD30014);
  static const transparentOrange = Color(0xffF8930014);
  static const transparentGrey = Color(0xff75757514);
  static const backgroundGrey = Color(0xffF6F6F6);

  // Theme variables from tokens_theme.json themes section
  static const CRColorVariant textGeneralBrand = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant textGreyscale900 = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant textGreyscale800 = CRColorVariant(
    light: Color(0xff424242),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant textGreyscale700 = CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant textGreyscale600 = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant textGreyscale500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant textGreyscale400 = CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant textGreyscale300 = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff757575),
  );
  static const CRColorVariant textGreyscale200 = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff616161),
  );
  static const CRColorVariant textGreyscale100 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff424242),
  );
  static const CRColorVariant textGreyscale50 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff212121),
  );
  static const CRColorVariant textGeneralWhite = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff000000),
  );
  static const CRColorVariant textGeneralBlack = CRColorVariant(
    light: Color(0xff000000),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant textAlertsStatusSuccess = CRColorVariant(
    light: Color(0xff12d18e),
    dark: Color(0xff12d18e),
  );
  static const CRColorVariant textAlertsStatusInfo = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant textAlertsStatusWarning = CRColorVariant(
    light: Color(0xfffacc15),
    dark: Color(0xfffacc15),
  );
  static const CRColorVariant textAlertsStatusError = CRColorVariant(
    light: Color(0xfff75555),
    dark: Color(0xfff75555),
  );
  static const CRColorVariant surfaceGeneralBrand = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant surfaceGeneralWhite = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff000000),
  );
  static const CRColorVariant surfaceGeneralBlack = CRColorVariant(
    light: Color(0xff000000),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceAlertsStatusSuccess = CRColorVariant(
    light: Color(0xff12d18e),
    dark: Color(0xff12d18e),
  );
  static const CRColorVariant surfaceAlertsStatusInfo = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant surfaceAlertsStatusWarning = CRColorVariant(
    light: Color(0xfffacc15),
    dark: Color(0xfffacc15),
  );
  static const CRColorVariant surfaceAlertsStatusError = CRColorVariant(
    light: Color(0xfff75555),
    dark: Color(0xfff75555),
  );
  static const CRColorVariant surfaceAlertsStatusLightDisabled = CRColorVariant(
    light: Color(0xffd8d8d8),
    dark: Color(0xff23252b),
  );
  static const CRColorVariant surfaceAlertsStatusDarkDisabled = CRColorVariant(
    light: Color(0xff23252b),
    dark: Color(0xffd8d8d8),
  );
  static const CRColorVariant surfaceAlertsStatusButtonDisabled =
      CRColorVariant(
    light: Color(0xff157a72),
    dark: Color(0xff157a72),
  );
  static const CRColorVariant surfaceGreyscale900 = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant surfaceGreyscale800 = CRColorVariant(
    light: Color(0xff424242),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant surfaceGreyscale700 = CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant surfaceGreyscale600 = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant surfaceGreyscale500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant surfaceGreyscale400 = CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceGreyscale300 = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceGreyscale200 = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff616161),
  );
  static const CRColorVariant surfaceGreyscale100 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff424242),
  );
  static const CRColorVariant surfaceGreyscale50 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceLightDarkDark1 = CRColorVariant(
    light: Color(0xff181a20),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceLightDarkDark2 = CRColorVariant(
    light: Color(0xff1e2025),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceLightDarkDark3 = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant surfaceLightDarkDark6 = CRColorVariant(
    light: Color(0xff262a35),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant surfaceLightDarkDark7 = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant surfaceBackgroundBackgroundTeal = CRColorVariant(
    light: Color(0xfff0fbfa),
    dark: Color(0xfff0fbfa),
  );
  static const CRColorVariant surfaceBackgroundBackgroundPurple =
      CRColorVariant(
    light: Color(0xfff8f0fe),
    dark: Color(0xfff8f0fe),
  );
  static const CRColorVariant surfaceBackgroundBackgroundRed = CRColorVariant(
    light: Color(0xfffff3f3),
    dark: Color(0xfffff3f3),
  );
  static const CRColorVariant surfaceBackgroundBackgroundBlue = CRColorVariant(
    light: Color(0xfff3f6ff),
    dark: Color(0xfff3f6ff),
  );
  static const CRColorVariant surfaceBackgroundBackgroundGreen = CRColorVariant(
    light: Color(0xffedfbf7),
    dark: Color(0xffedfbf7),
  );
  static const CRColorVariant surfaceBackgroundBackgroundBrown = CRColorVariant(
    light: Color(0xfffbf6f3),
    dark: Color(0xfffbf6f3),
  );
  static const CRColorVariant surfaceBackgroundBackgroundYellow =
      CRColorVariant(
    light: Color(0xfffffceb),
    dark: Color(0xfffffceb),
  );
  static const CRColorVariant surfaceBackgroundBackgroundOrange =
      CRColorVariant(
    light: Color(0xfffff8ee),
    dark: Color(0xfffff8ee),
  );
  static const CRColorVariant surfaceTransparentTransparentTeal =
      CRColorVariant(
    light: Color(0x141a998e),
    dark: Color(0x141a998e),
  );
  static const CRColorVariant surfaceTransparentTransparentPurple =
      CRColorVariant(
    light: Color(0x9610ff14),
    dark: Color(0x9610ff14),
  );
  static const CRColorVariant surfaceTransparentTransparentRed = CRColorVariant(
    light: Color(0xff4a4a14),
    dark: Color(0xff4a4a14),
  );
  static const CRColorVariant surfaceTransparentTransparentBlue =
      CRColorVariant(
    light: Color(0x235dff14),
    dark: Color(0x235dff14),
  );
  static const CRColorVariant surfaceTransparentTransparentGreen =
      CRColorVariant(
    light: Color(0x1417ce92),
    dark: Color(0x1417ce92),
  );
  static const CRColorVariant surfaceTransparentTransparentBrown =
      CRColorVariant(
    light: Color(0xa4634d14),
    dark: Color(0xa4634d14),
  );
  static const CRColorVariant surfaceTransparentTransparentYellow =
      CRColorVariant(
    light: Color(0xffd30014),
    dark: Color(0xffd30014),
  );
  static const CRColorVariant surfaceTransparentTransparentOrange =
      CRColorVariant(
    light: Color(0xf8930014),
    dark: Color(0xf8930014),
  );
  static const CRColorVariant strokeGeneralBrand = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant strokeGreyscaleGreyscale300 = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff757575),
  );
  static const CRColorVariant strokeGreyscaleGreyscale200 = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff616161),
  );
  static const CRColorVariant strokeGreyscaleGreyscale100 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff424242),
  );
  static const CRColorVariant strokeGreyscaleGreyscale50 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff212121),
  );
  static const CRColorVariant strokeGeneralWhite = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff000000),
  );
  static const CRColorVariant strokeGeneralBlack = CRColorVariant(
    light: Color(0xff000000),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceTransparentTransparentGrey =
      CRColorVariant(
    light: Color(0x75757514),
    dark: Color(0x75757514),
  );
  static const CRColorVariant strokeGreyscaleGreyscale900 = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant strokeGreyscaleGreyscale800 = CRColorVariant(
    light: Color(0xff424242),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant strokeGreyscaleGreyscale700 = CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant strokeGreyscaleGreyscale600 = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant strokeGreyscaleGreyscale500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant strokeGreyscaleGreyscale400 = CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant strokeAlertsStatusLightDisabled = CRColorVariant(
    light: Color(0xffd8d8d8),
    dark: Color(0xff23252b),
  );
  static const CRColorVariant strokeAlertsStatusDarkDisabled = CRColorVariant(
    light: Color(0xff23252b),
    dark: Color(0xffd8d8d8),
  );
  static const CRColorVariant strokeAlertsStatusButtonDisabled = CRColorVariant(
    light: Color(0xff157a72),
    dark: Color(0xff157a72),
  );
  static const CRColorVariant strokeAlertsStatusSuccess = CRColorVariant(
    light: Color(0xff12d18e),
    dark: Color(0xff12d18e),
  );
  static const CRColorVariant strokeAlertsStatusInfo = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant strokeAlertsStatusWarning = CRColorVariant(
    light: Color(0xfffacc15),
    dark: Color(0xfffacc15),
  );
  static const CRColorVariant strokeAlertsStatusError = CRColorVariant(
    light: Color(0xfff75555),
    dark: Color(0xfff75555),
  );
  static const CRColorVariant strokeBorderSingleStrokeBorderLight =
      CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant strokeBorderFullStrokeLight = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant strokeBorderSingleStrokeDividerLight =
      CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant textButtonsBrand = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant textButtonsWhite = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant textButtonsGreyscale900 = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceButtonsBrand = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant surfaceButtonsButtonLight = CRColorVariant(
    light: Color(0xfff0fbfa),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceButtonsButtonDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfff0fbfa),
  );
  static const CRColorVariant surfaceButtonsSocialMediaLight = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant surfaceButtonsSocialMediaDark = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceButtonsButtonDisabled = CRColorVariant(
    light: Color(0xff157a72),
    dark: Color(0xff157a72),
  );
  static const CRColorVariant surfaceButtonsButton50 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant textButtonsSocialMediaLight = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceButtonsGreyscaleIcon900 = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceButtonsWhiteIcon = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant textButtonsBrandLight = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant textButtonsWhiteDark = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant textButtonsSocialMediaDark = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceButtonsBrandLight = CRColorVariant(
    light: Color(0xff1a998e),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceButtonsWhiteDark = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1a998e),
  );
  static const CRColorVariant strokeBorderSingleStrokeBorderDark =
      CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant strokeBorderSingleStrokeDividerDark =
      CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant strokeBorderFullStrokeDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant surfaceComponentsDropdownLight = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff262a35),
  );
  static const CRColorVariant surfaceComponentsDropdownDark = CRColorVariant(
    light: Color(0xff262a35),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceComponentsModalLight = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant surfaceComponentsModalDark = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceComponentsButtomBarActionLight =
      CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff181a20),
  );
  static const CRColorVariant surfaceComponentsButtomBarActionDark =
      CRColorVariant(
    light: Color(0xff181a20),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceComponentsGeneralFrameLight =
      CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant surfaceComponentsGeneralFrameDark =
      CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant surfaceAdditionalsOverColorFrameLight =
      CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceComponentsDropdownIconLight =
      CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant surfaceComponentsDropdownIconDark =
      CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceLightDarkLight2 = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1e2025),
  );
  static const CRColorVariant surfaceLightDarkLight3 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant surfaceLightDarkLight6 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff262a35),
  );
  static const CRColorVariant surfaceLightDarkLight7 = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceLightDarkLight1 = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff181a20),
  );
  static const CRColorVariant surfaceAdditionalsOverColorFrameDark =
      CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xff212121),
  );
  static const CRColorVariant textGeneralTextLight = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant textGeneralTextDark = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceGeneralSurfaceLight = CRColorVariant(
    light: Color(0xff212121),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceGeneralSurfaceDark = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff212121),
  );
  static const CRColorVariant surfaceLightDarkLight8 = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceLightDarkDark8 = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant strokeAdditionalsToggle400 = CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceLightDarkLight5 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant surfaceLightDarkDark5 = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant surfaceComponentsSearchSurfaceLight =
      CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceComponentsSearchSurfaceDark =
      CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant textComponentsSearchTextLight = CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff757575),
  );
  static const CRColorVariant textComponentsSearchTextDark = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant textComponentsTextFilled = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceComponentsSurfaceFilled = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant strokeLightDarkLight1 = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff181a20),
  );
  static const CRColorVariant strokeLightDarkLight2 = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff1e2025),
  );
  static const CRColorVariant strokeLightDarkLight3 = CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant strokeLightDarkLight5 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff262a35),
  );
  static const CRColorVariant strokeLightDarkLight4 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant strokeLightDarkLight7 = CRColorVariant(
    light: Color(0xffeeeeee),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant strokeLightDarkLight8 = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant strokeLightDarkDark1 = CRColorVariant(
    light: Color(0xff181a20),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant strokeLightDarkDark2 = CRColorVariant(
    light: Color(0xff1e2025),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant strokeLightDarkDark3 = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant strokeLightDarkDark5 = CRColorVariant(
    light: Color(0xff262a35),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant strokeLightDarkDark4 = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant strokeLightDarkDark7 = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffeeeeee),
  );
  static const CRColorVariant strokeLightDarkDark8 = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant surfaceBackgroundBackgroundGrey = CRColorVariant(
    light: Color(0xfff6f6f6),
    dark: Color(0xfff6f6f6),
  );
  static const CRColorVariant surfaceTagSolidDefaultGrey600 = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceTagInvertedDefaultLight = CRColorVariant(
    light: Color(0xfff6f6f6),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceTagInvertedInfoLight = CRColorVariant(
    light: Color(0xfff0fbfa),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceTagInvertedSuccessLight = CRColorVariant(
    light: Color(0xffedfbf7),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceTagInvertedWarningLight = CRColorVariant(
    light: Color(0xfffffceb),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceTagInvertedErrorLight = CRColorVariant(
    light: Color(0xfffff3f3),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceTagInvertedDefaultDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfff6f6f6),
  );
  static const CRColorVariant strokeAdditionalsTagOutlineDefault600 =
      CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xff757575),
  );
  static const CRColorVariant textTagTagSolidDefault600 = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceTagInvertedInfoDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfff0fbfa),
  );
  static const CRColorVariant surfaceTagInvertedSuccessDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xffedfbf7),
  );
  static const CRColorVariant surfaceTagInvertedWarningDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfffffceb),
  );
  static const CRColorVariant surfaceTagInvertedErrorDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfffff3f3),
  );
  static const CRColorVariant textTagTagInvertedDefaultLight = CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xffe0e0e0),
  );
  static const CRColorVariant textTagTagInvertedDefaultDark = CRColorVariant(
    light: Color(0xffe0e0e0),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceComponentsCategoryMenuLight =
      CRColorVariant(
    light: Color(0xfff0fbfa),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceComponentsCategoryMenuDark =
      CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfff0fbfa),
  );
  static const CRColorVariant textComponentsMenuBarText500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceComponentsMenuBarIcon500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceComponentsMenuBarSurfaceLight =
      CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0x181a20d8),
  );
  static const CRColorVariant surfaceComponentsMenuBarSurfaceDark =
      CRColorVariant(
    light: Color(0x181a20d8),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant strokeLightDarkLight6 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant strokeLightDarkDark6 = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant surfaceLightDarkLight4 = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff1e2025),
  );
  static const CRColorVariant surfaceLightDarkDark4 = CRColorVariant(
    light: Color(0xff1e2025),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant textComponentsTextFormDefault500 = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceComponentsIconFormDefault500 =
      CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant textComponentsTextFormDisabled600 =
      CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xff757575),
  );
  static const CRColorVariant surfaceComponentsIconFormDisabled600 =
      CRColorVariant(
    light: Color(0xff757575),
    dark: Color(0xff757575),
  );
  static const CRColorVariant strokeInputFormDefaultFilledLight =
      CRColorVariant(
    light: Color(0xfffafafa),
    dark: Color(0xff1f222a),
  );
  static const CRColorVariant strokeInputFormReadOnlyLight = CRColorVariant(
    light: Color(0xfff5f5f5),
    dark: Color(0xff1e2025),
  );
  static const CRColorVariant strokeInputFormDisabledLight = CRColorVariant(
    light: Color(0xffd8d8d8),
    dark: Color(0xff23252b),
  );
  static const CRColorVariant strokeInputFormDefaultFilledDark = CRColorVariant(
    light: Color(0xff1f222a),
    dark: Color(0xfffafafa),
  );
  static const CRColorVariant strokeInputFormReadOnlyDark = CRColorVariant(
    light: Color(0xff1e2025),
    dark: Color(0xfff5f5f5),
  );
  static const CRColorVariant strokeInputFormDisabledDark = CRColorVariant(
    light: Color(0xff23252b),
    dark: Color(0xffd8d8d8),
  );
  static const CRColorVariant textInputForm2InputFormDefaultLight =
      CRColorVariant(
    light: Color(0xffbdbdbd),
    dark: Color(0xff616161),
  );
  static const CRColorVariant textInputForm2InputFormReadOnlyLight =
      CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant textInputForm2InputFormDisabledLight =
      CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff616161),
  );
  static const CRColorVariant textInputForm2InputFormDefaultDark =
      CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xffbdbdbd),
  );
  static const CRColorVariant textInputForm2InputFormReadOnlyDark =
      CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff616161),
  );
  static const CRColorVariant textInputForm2InputFormDisabledDark =
      CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceInputForm2DefaultLight = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff424242),
  );
  static const CRColorVariant surfaceInputForm2ReadOnlyLight = CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff35383f),
  );
  static const CRColorVariant surfaceInputForm2DefaultDark = CRColorVariant(
    light: Color(0xff424242),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceInputForm2ReadOnlyDark = CRColorVariant(
    light: Color(0xff35383f),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceInputForm2ReadOnlyIconLight =
      CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant surfaceInputForm2ReadOnlyIconDark =
      CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff616161),
  );
  static const CRColorVariant surfaceInputForm2DisabledIconLight =
      CRColorVariant(
    light: Color(0xff9e9e9e),
    dark: Color(0xff616161),
  );
  static const CRColorVariant surfaceInputForm2DisabledIconDark =
      CRColorVariant(
    light: Color(0xff616161),
    dark: Color(0xff9e9e9e),
  );
  static const CRColorVariant strokeLightDarkLight0 = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff181a20),
  );
  static const CRColorVariant strokeLightDarkDark0 = CRColorVariant(
    light: Color(0xff181a20),
    dark: Color(0xffffffff),
  );
  static const CRColorVariant surfaceOthersRed = CRColorVariant(
    light: Color(0xfff54336),
    dark: Color(0xfff54336),
  );
  static const CRColorVariant surfaceOthersPink = CRColorVariant(
    light: Color(0xffea1e61),
    dark: Color(0xffea1e61),
  );
  static const CRColorVariant surfaceOthersPurple = CRColorVariant(
    light: Color(0xff9d28ac),
    dark: Color(0xff9d28ac),
  );
  static const CRColorVariant surfaceOthersDeepPurple = CRColorVariant(
    light: Color(0xff673ab3),
    dark: Color(0xff673ab3),
  );
  static const CRColorVariant surfaceOthersIndigo = CRColorVariant(
    light: Color(0xff3f51b2),
    dark: Color(0xff3f51b2),
  );
  static const CRColorVariant surfaceOthersBlue = CRColorVariant(
    light: Color(0xff1a96f0),
    dark: Color(0xff1a96f0),
  );
  static const CRColorVariant surfaceOthersLightBlue = CRColorVariant(
    light: Color(0xff00a9f1),
    dark: Color(0xff00a9f1),
  );
  static const CRColorVariant surfaceOthersCyan = CRColorVariant(
    light: Color(0xff00bcd3),
    dark: Color(0xff00bcd3),
  );
  static const CRColorVariant surfaceOthersTeal = CRColorVariant(
    light: Color(0xff009689),
    dark: Color(0xff009689),
  );
  static const CRColorVariant surfaceOthersGreen = CRColorVariant(
    light: Color(0xff4aaf57),
    dark: Color(0xff4aaf57),
  );
  static const CRColorVariant surfaceOthersLightGreen = CRColorVariant(
    light: Color(0xff8bc255),
    dark: Color(0xff8bc255),
  );
  static const CRColorVariant surfaceOthersLime = CRColorVariant(
    light: Color(0xffcddc4c),
    dark: Color(0xffcddc4c),
  );
  static const CRColorVariant surfaceOthersYellow = CRColorVariant(
    light: Color(0xffffeb4f),
    dark: Color(0xffffeb4f),
  );
  static const CRColorVariant surfaceOthersAmber = CRColorVariant(
    light: Color(0xffffc02d),
    dark: Color(0xffffc02d),
  );
  static const CRColorVariant surfaceOthersOrange = CRColorVariant(
    light: Color(0xffff981f),
    dark: Color(0xffff981f),
  );
  static const CRColorVariant surfaceOthersDeepOrange = CRColorVariant(
    light: Color(0xffff5726),
    dark: Color(0xffff5726),
  );
  static const CRColorVariant surfaceOthersBrown = CRColorVariant(
    light: Color(0xff7a5548),
    dark: Color(0xff7a5548),
  );
  static const CRColorVariant surfaceOthersBlueGrey = CRColorVariant(
    light: Color(0xff607d8a),
    dark: Color(0xff607d8a),
  );
  static const CRColorVariant strokeAdditionalsSearchFormLight = CRColorVariant(
    light: Color(0xffffffff),
    dark: Color(0xff181a20),
  );
  static const CRColorVariant strokeAdditionalsSearchFormDark = CRColorVariant(
    light: Color(0xff181a20),
    dark: Color(0xffffffff),
  );
}
