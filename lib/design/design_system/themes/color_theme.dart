import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/design_system/colors_key.dart';

class CRColorThemes extends ThemeExtension<CRColorThemes> {
  final Color textGeneralBrand;
  final Color textGreyscale900;
  final Color textGreyscale800;
  final Color textGreyscale700;
  final Color textGreyscale600;
  final Color textGreyscale500;
  final Color textGreyscale400;
  final Color textGreyscale300;
  final Color textGreyscale200;
  final Color textGreyscale100;
  final Color textGreyscale50;
  final Color textGeneralWhite;
  final Color textGeneralBlack;
  final Color textAlertsStatusSuccess;
  final Color textAlertsStatusInfo;
  final Color textAlertsStatusWarning;
  final Color textAlertsStatusError;
  final Color surfaceGeneralBrand;
  final Color surfaceGeneralWhite;
  final Color surfaceGeneralBlack;
  final Color surfaceAlertsStatusSuccess;
  final Color surfaceAlertsStatusInfo;
  final Color surfaceAlertsStatusWarning;
  final Color surfaceAlertsStatusError;
  final Color surfaceAlertsStatusLightDisabled;
  final Color surfaceAlertsStatusDarkDisabled;
  final Color surfaceAlertsStatusButtonDisabled;
  final Color surfaceGreyscale900;
  final Color surfaceGreyscale800;
  final Color surfaceGreyscale700;
  final Color surfaceGreyscale600;
  final Color surfaceGreyscale500;
  final Color surfaceGreyscale400;
  final Color surfaceGreyscale300;
  final Color surfaceGreyscale200;
  final Color surfaceGreyscale100;
  final Color surfaceGreyscale50;
  final Color surfaceLightDarkDark1;
  final Color surfaceLightDarkDark2;
  final Color surfaceLightDarkDark3;
  final Color surfaceLightDarkDark6;
  final Color surfaceLightDarkDark7;
  final Color surfaceBackgroundBackgroundTeal;
  final Color surfaceBackgroundBackgroundPurple;
  final Color surfaceBackgroundBackgroundRed;
  final Color surfaceBackgroundBackgroundBlue;
  final Color surfaceBackgroundBackgroundGreen;
  final Color surfaceBackgroundBackgroundBrown;
  final Color surfaceBackgroundBackgroundYellow;
  final Color surfaceBackgroundBackgroundOrange;
  final Color surfaceTransparentTransparentTeal;
  final Color surfaceTransparentTransparentPurple;
  final Color surfaceTransparentTransparentRed;
  final Color surfaceTransparentTransparentBlue;
  final Color surfaceTransparentTransparentGreen;
  final Color surfaceTransparentTransparentBrown;
  final Color surfaceTransparentTransparentYellow;
  final Color surfaceTransparentTransparentOrange;
  final Color strokeGeneralBrand;
  final Color strokeGreyscaleGreyscale300;
  final Color strokeGreyscaleGreyscale200;
  final Color strokeGreyscaleGreyscale100;
  final Color strokeGreyscaleGreyscale50;
  final Color strokeGeneralWhite;
  final Color strokeGeneralBlack;
  final Color surfaceTransparentTransparentGrey;
  final Color strokeGreyscaleGreyscale900;
  final Color strokeGreyscaleGreyscale800;
  final Color strokeGreyscaleGreyscale700;
  final Color strokeGreyscaleGreyscale600;
  final Color strokeGreyscaleGreyscale500;
  final Color strokeGreyscaleGreyscale400;
  final Color strokeAlertsStatusLightDisabled;
  final Color strokeAlertsStatusDarkDisabled;
  final Color strokeAlertsStatusButtonDisabled;
  final Color strokeAlertsStatusSuccess;
  final Color strokeAlertsStatusInfo;
  final Color strokeAlertsStatusWarning;
  final Color strokeAlertsStatusError;
  final Color strokeBorderSingleStrokeBorderLight;
  final Color strokeBorderFullStrokeLight;
  final Color strokeBorderSingleStrokeDividerLight;
  final Color textButtonsBrand;
  final Color textButtonsWhite;
  final Color textButtonsGreyscale900;
  final Color surfaceButtonsBrand;
  final Color surfaceButtonsButtonLight;
  final Color surfaceButtonsButtonDark;
  final Color surfaceButtonsSocialMediaLight;
  final Color surfaceButtonsSocialMediaDark;
  final Color surfaceButtonsButtonDisabled;
  final Color surfaceButtonsButton50;
  final Color textButtonsSocialMediaLight;
  final Color surfaceButtonsGreyscaleIcon900;
  final Color surfaceButtonsWhiteIcon;
  final Color textButtonsBrandLight;
  final Color textButtonsWhiteDark;
  final Color textButtonsSocialMediaDark;
  final Color surfaceButtonsBrandLight;
  final Color surfaceButtonsWhiteDark;
  final Color strokeBorderSingleStrokeBorderDark;
  final Color strokeBorderSingleStrokeDividerDark;
  final Color strokeBorderFullStrokeDark;
  final Color surfaceComponentsDropdownLight;
  final Color surfaceComponentsDropdownDark;
  final Color surfaceComponentsModalLight;
  final Color surfaceComponentsModalDark;
  final Color surfaceComponentsButtomBarActionLight;
  final Color surfaceComponentsButtomBarActionDark;
  final Color surfaceComponentsGeneralFrameLight;
  final Color surfaceComponentsGeneralFrameDark;
  final Color surfaceAdditionalsOverColorFrameLight;
  final Color surfaceComponentsDropdownIconLight;
  final Color surfaceComponentsDropdownIconDark;
  final Color surfaceLightDarkLight2;
  final Color surfaceLightDarkLight3;
  final Color surfaceLightDarkLight6;
  final Color surfaceLightDarkLight7;
  final Color surfaceLightDarkLight1;
  final Color surfaceAdditionalsOverColorFrameDark;
  final Color textGeneralTextLight;
  final Color textGeneralTextDark;
  final Color surfaceGeneralSurfaceLight;
  final Color surfaceGeneralSurfaceDark;
  final Color surfaceLightDarkLight8;
  final Color surfaceLightDarkDark8;
  final Color strokeAdditionalsToggle400;
  final Color surfaceLightDarkLight5;
  final Color surfaceLightDarkDark5;
  final Color surfaceComponentsSearchSurfaceLight;
  final Color surfaceComponentsSearchSurfaceDark;
  final Color textComponentsSearchTextLight;
  final Color textComponentsSearchTextDark;
  final Color textComponentsTextFilled;
  final Color surfaceComponentsSurfaceFilled;
  final Color strokeLightDarkLight1;
  final Color strokeLightDarkLight2;
  final Color strokeLightDarkLight3;
  final Color strokeLightDarkLight5;
  final Color strokeLightDarkLight4;
  final Color strokeLightDarkLight7;
  final Color strokeLightDarkLight8;
  final Color strokeLightDarkDark1;
  final Color strokeLightDarkDark2;
  final Color strokeLightDarkDark3;
  final Color strokeLightDarkDark5;
  final Color strokeLightDarkDark4;
  final Color strokeLightDarkDark7;
  final Color strokeLightDarkDark8;
  final Color surfaceBackgroundBackgroundGrey;
  final Color surfaceTagSolidDefaultGrey600;
  final Color surfaceTagInvertedDefaultLight;
  final Color surfaceTagInvertedInfoLight;
  final Color surfaceTagInvertedSuccessLight;
  final Color surfaceTagInvertedWarningLight;
  final Color surfaceTagInvertedErrorLight;
  final Color surfaceTagInvertedDefaultDark;
  final Color strokeAdditionalsTagOutlineDefault600;
  final Color textTagTagSolidDefault600;
  final Color surfaceTagInvertedInfoDark;
  final Color surfaceTagInvertedSuccessDark;
  final Color surfaceTagInvertedWarningDark;
  final Color surfaceTagInvertedErrorDark;
  final Color textTagTagInvertedDefaultLight;
  final Color textTagTagInvertedDefaultDark;
  final Color surfaceComponentsCategoryMenuLight;
  final Color surfaceComponentsCategoryMenuDark;
  final Color textComponentsMenuBarText500;
  final Color surfaceComponentsMenuBarIcon500;
  final Color surfaceComponentsMenuBarSurfaceLight;
  final Color surfaceComponentsMenuBarSurfaceDark;
  final Color strokeLightDarkLight6;
  final Color strokeLightDarkDark6;
  final Color surfaceLightDarkLight4;
  final Color surfaceLightDarkDark4;
  final Color textComponentsTextFormDefault500;
  final Color surfaceComponentsIconFormDefault500;
  final Color textComponentsTextFormDisabled600;
  final Color surfaceComponentsIconFormDisabled600;
  final Color strokeInputFormDefaultFilledLight;
  final Color strokeInputFormReadOnlyLight;
  final Color strokeInputFormDisabledLight;
  final Color strokeInputFormDefaultFilledDark;
  final Color strokeInputFormReadOnlyDark;
  final Color strokeInputFormDisabledDark;
  final Color textInputForm2InputFormDefaultLight;
  final Color textInputForm2InputFormReadOnlyLight;
  final Color textInputForm2InputFormDisabledLight;
  final Color textInputForm2InputFormDefaultDark;
  final Color textInputForm2InputFormReadOnlyDark;
  final Color textInputForm2InputFormDisabledDark;
  final Color surfaceInputForm2DefaultLight;
  final Color surfaceInputForm2ReadOnlyLight;
  final Color surfaceInputForm2DefaultDark;
  final Color surfaceInputForm2ReadOnlyDark;
  final Color surfaceInputForm2ReadOnlyIconLight;
  final Color surfaceInputForm2ReadOnlyIconDark;
  final Color surfaceInputForm2DisabledIconLight;
  final Color surfaceInputForm2DisabledIconDark;
  final Color strokeLightDarkLight0;
  final Color strokeLightDarkDark0;
  final Color surfaceOthersRed;
  final Color surfaceOthersPink;
  final Color surfaceOthersPurple;
  final Color surfaceOthersDeepPurple;
  final Color surfaceOthersIndigo;
  final Color surfaceOthersBlue;
  final Color surfaceOthersLightBlue;
  final Color surfaceOthersCyan;
  final Color surfaceOthersTeal;
  final Color surfaceOthersGreen;
  final Color surfaceOthersLightGreen;
  final Color surfaceOthersLime;
  final Color surfaceOthersYellow;
  final Color surfaceOthersAmber;
  final Color surfaceOthersOrange;
  final Color surfaceOthersDeepOrange;
  final Color surfaceOthersBrown;
  final Color surfaceOthersBlueGrey;
  final Color strokeAdditionalsSearchFormLight;
  final Color strokeAdditionalsSearchFormDark;

  const CRColorThemes({
    required this.textGeneralBrand,
    required this.textGreyscale900,
    required this.textGreyscale800,
    required this.textGreyscale700,
    required this.textGreyscale600,
    required this.textGreyscale500,
    required this.textGreyscale400,
    required this.textGreyscale300,
    required this.textGreyscale200,
    required this.textGreyscale100,
    required this.textGreyscale50,
    required this.textGeneralWhite,
    required this.textGeneralBlack,
    required this.textAlertsStatusSuccess,
    required this.textAlertsStatusInfo,
    required this.textAlertsStatusWarning,
    required this.textAlertsStatusError,
    required this.surfaceGeneralBrand,
    required this.surfaceGeneralWhite,
    required this.surfaceGeneralBlack,
    required this.surfaceAlertsStatusSuccess,
    required this.surfaceAlertsStatusInfo,
    required this.surfaceAlertsStatusWarning,
    required this.surfaceAlertsStatusError,
    required this.surfaceAlertsStatusLightDisabled,
    required this.surfaceAlertsStatusDarkDisabled,
    required this.surfaceAlertsStatusButtonDisabled,
    required this.surfaceGreyscale900,
    required this.surfaceGreyscale800,
    required this.surfaceGreyscale700,
    required this.surfaceGreyscale600,
    required this.surfaceGreyscale500,
    required this.surfaceGreyscale400,
    required this.surfaceGreyscale300,
    required this.surfaceGreyscale200,
    required this.surfaceGreyscale100,
    required this.surfaceGreyscale50,
    required this.surfaceLightDarkDark1,
    required this.surfaceLightDarkDark2,
    required this.surfaceLightDarkDark3,
    required this.surfaceLightDarkDark6,
    required this.surfaceLightDarkDark7,
    required this.surfaceBackgroundBackgroundTeal,
    required this.surfaceBackgroundBackgroundPurple,
    required this.surfaceBackgroundBackgroundRed,
    required this.surfaceBackgroundBackgroundBlue,
    required this.surfaceBackgroundBackgroundGreen,
    required this.surfaceBackgroundBackgroundBrown,
    required this.surfaceBackgroundBackgroundYellow,
    required this.surfaceBackgroundBackgroundOrange,
    required this.surfaceTransparentTransparentTeal,
    required this.surfaceTransparentTransparentPurple,
    required this.surfaceTransparentTransparentRed,
    required this.surfaceTransparentTransparentBlue,
    required this.surfaceTransparentTransparentGreen,
    required this.surfaceTransparentTransparentBrown,
    required this.surfaceTransparentTransparentYellow,
    required this.surfaceTransparentTransparentOrange,
    required this.strokeGeneralBrand,
    required this.strokeGreyscaleGreyscale300,
    required this.strokeGreyscaleGreyscale200,
    required this.strokeGreyscaleGreyscale100,
    required this.strokeGreyscaleGreyscale50,
    required this.strokeGeneralWhite,
    required this.strokeGeneralBlack,
    required this.surfaceTransparentTransparentGrey,
    required this.strokeGreyscaleGreyscale900,
    required this.strokeGreyscaleGreyscale800,
    required this.strokeGreyscaleGreyscale700,
    required this.strokeGreyscaleGreyscale600,
    required this.strokeGreyscaleGreyscale500,
    required this.strokeGreyscaleGreyscale400,
    required this.strokeAlertsStatusLightDisabled,
    required this.strokeAlertsStatusDarkDisabled,
    required this.strokeAlertsStatusButtonDisabled,
    required this.strokeAlertsStatusSuccess,
    required this.strokeAlertsStatusInfo,
    required this.strokeAlertsStatusWarning,
    required this.strokeAlertsStatusError,
    required this.strokeBorderSingleStrokeBorderLight,
    required this.strokeBorderFullStrokeLight,
    required this.strokeBorderSingleStrokeDividerLight,
    required this.textButtonsBrand,
    required this.textButtonsWhite,
    required this.textButtonsGreyscale900,
    required this.surfaceButtonsBrand,
    required this.surfaceButtonsButtonLight,
    required this.surfaceButtonsButtonDark,
    required this.surfaceButtonsSocialMediaLight,
    required this.surfaceButtonsSocialMediaDark,
    required this.surfaceButtonsButtonDisabled,
    required this.surfaceButtonsButton50,
    required this.textButtonsSocialMediaLight,
    required this.surfaceButtonsGreyscaleIcon900,
    required this.surfaceButtonsWhiteIcon,
    required this.textButtonsBrandLight,
    required this.textButtonsWhiteDark,
    required this.textButtonsSocialMediaDark,
    required this.surfaceButtonsBrandLight,
    required this.surfaceButtonsWhiteDark,
    required this.strokeBorderSingleStrokeBorderDark,
    required this.strokeBorderSingleStrokeDividerDark,
    required this.strokeBorderFullStrokeDark,
    required this.surfaceComponentsDropdownLight,
    required this.surfaceComponentsDropdownDark,
    required this.surfaceComponentsModalLight,
    required this.surfaceComponentsModalDark,
    required this.surfaceComponentsButtomBarActionLight,
    required this.surfaceComponentsButtomBarActionDark,
    required this.surfaceComponentsGeneralFrameLight,
    required this.surfaceComponentsGeneralFrameDark,
    required this.surfaceAdditionalsOverColorFrameLight,
    required this.surfaceComponentsDropdownIconLight,
    required this.surfaceComponentsDropdownIconDark,
    required this.surfaceLightDarkLight2,
    required this.surfaceLightDarkLight3,
    required this.surfaceLightDarkLight6,
    required this.surfaceLightDarkLight7,
    required this.surfaceLightDarkLight1,
    required this.surfaceAdditionalsOverColorFrameDark,
    required this.textGeneralTextLight,
    required this.textGeneralTextDark,
    required this.surfaceGeneralSurfaceLight,
    required this.surfaceGeneralSurfaceDark,
    required this.surfaceLightDarkLight8,
    required this.surfaceLightDarkDark8,
    required this.strokeAdditionalsToggle400,
    required this.surfaceLightDarkLight5,
    required this.surfaceLightDarkDark5,
    required this.surfaceComponentsSearchSurfaceLight,
    required this.surfaceComponentsSearchSurfaceDark,
    required this.textComponentsSearchTextLight,
    required this.textComponentsSearchTextDark,
    required this.textComponentsTextFilled,
    required this.surfaceComponentsSurfaceFilled,
    required this.strokeLightDarkLight1,
    required this.strokeLightDarkLight2,
    required this.strokeLightDarkLight3,
    required this.strokeLightDarkLight5,
    required this.strokeLightDarkLight4,
    required this.strokeLightDarkLight7,
    required this.strokeLightDarkLight8,
    required this.strokeLightDarkDark1,
    required this.strokeLightDarkDark2,
    required this.strokeLightDarkDark3,
    required this.strokeLightDarkDark5,
    required this.strokeLightDarkDark4,
    required this.strokeLightDarkDark7,
    required this.strokeLightDarkDark8,
    required this.surfaceBackgroundBackgroundGrey,
    required this.surfaceTagSolidDefaultGrey600,
    required this.surfaceTagInvertedDefaultLight,
    required this.surfaceTagInvertedInfoLight,
    required this.surfaceTagInvertedSuccessLight,
    required this.surfaceTagInvertedWarningLight,
    required this.surfaceTagInvertedErrorLight,
    required this.surfaceTagInvertedDefaultDark,
    required this.strokeAdditionalsTagOutlineDefault600,
    required this.textTagTagSolidDefault600,
    required this.surfaceTagInvertedInfoDark,
    required this.surfaceTagInvertedSuccessDark,
    required this.surfaceTagInvertedWarningDark,
    required this.surfaceTagInvertedErrorDark,
    required this.textTagTagInvertedDefaultLight,
    required this.textTagTagInvertedDefaultDark,
    required this.surfaceComponentsCategoryMenuLight,
    required this.surfaceComponentsCategoryMenuDark,
    required this.textComponentsMenuBarText500,
    required this.surfaceComponentsMenuBarIcon500,
    required this.surfaceComponentsMenuBarSurfaceLight,
    required this.surfaceComponentsMenuBarSurfaceDark,
    required this.strokeLightDarkLight6,
    required this.strokeLightDarkDark6,
    required this.surfaceLightDarkLight4,
    required this.surfaceLightDarkDark4,
    required this.textComponentsTextFormDefault500,
    required this.surfaceComponentsIconFormDefault500,
    required this.textComponentsTextFormDisabled600,
    required this.surfaceComponentsIconFormDisabled600,
    required this.strokeInputFormDefaultFilledLight,
    required this.strokeInputFormReadOnlyLight,
    required this.strokeInputFormDisabledLight,
    required this.strokeInputFormDefaultFilledDark,
    required this.strokeInputFormReadOnlyDark,
    required this.strokeInputFormDisabledDark,
    required this.textInputForm2InputFormDefaultLight,
    required this.textInputForm2InputFormReadOnlyLight,
    required this.textInputForm2InputFormDisabledLight,
    required this.textInputForm2InputFormDefaultDark,
    required this.textInputForm2InputFormReadOnlyDark,
    required this.textInputForm2InputFormDisabledDark,
    required this.surfaceInputForm2DefaultLight,
    required this.surfaceInputForm2ReadOnlyLight,
    required this.surfaceInputForm2DefaultDark,
    required this.surfaceInputForm2ReadOnlyDark,
    required this.surfaceInputForm2ReadOnlyIconLight,
    required this.surfaceInputForm2ReadOnlyIconDark,
    required this.surfaceInputForm2DisabledIconLight,
    required this.surfaceInputForm2DisabledIconDark,
    required this.strokeLightDarkLight0,
    required this.strokeLightDarkDark0,
    required this.surfaceOthersRed,
    required this.surfaceOthersPink,
    required this.surfaceOthersPurple,
    required this.surfaceOthersDeepPurple,
    required this.surfaceOthersIndigo,
    required this.surfaceOthersBlue,
    required this.surfaceOthersLightBlue,
    required this.surfaceOthersCyan,
    required this.surfaceOthersTeal,
    required this.surfaceOthersGreen,
    required this.surfaceOthersLightGreen,
    required this.surfaceOthersLime,
    required this.surfaceOthersYellow,
    required this.surfaceOthersAmber,
    required this.surfaceOthersOrange,
    required this.surfaceOthersDeepOrange,
    required this.surfaceOthersBrown,
    required this.surfaceOthersBlueGrey,
    required this.strokeAdditionalsSearchFormLight,
    required this.strokeAdditionalsSearchFormDark,
  });

  @override
  CRColorThemes copyWith({
    Color? textGeneralBrand,
    Color? textGreyscale900,
    Color? textGreyscale800,
    Color? textGreyscale700,
    Color? textGreyscale600,
    Color? textGreyscale500,
    Color? textGreyscale400,
    Color? textGreyscale300,
    Color? textGreyscale200,
    Color? textGreyscale100,
    Color? textGreyscale50,
    Color? textGeneralWhite,
    Color? textGeneralBlack,
    Color? textAlertsStatusSuccess,
    Color? textAlertsStatusInfo,
    Color? textAlertsStatusWarning,
    Color? textAlertsStatusError,
    Color? surfaceGeneralBrand,
    Color? surfaceGeneralWhite,
    Color? surfaceGeneralBlack,
    Color? surfaceAlertsStatusSuccess,
    Color? surfaceAlertsStatusInfo,
    Color? surfaceAlertsStatusWarning,
    Color? surfaceAlertsStatusError,
    Color? surfaceAlertsStatusLightDisabled,
    Color? surfaceAlertsStatusDarkDisabled,
    Color? surfaceAlertsStatusButtonDisabled,
    Color? surfaceGreyscale900,
    Color? surfaceGreyscale800,
    Color? surfaceGreyscale700,
    Color? surfaceGreyscale600,
    Color? surfaceGreyscale500,
    Color? surfaceGreyscale400,
    Color? surfaceGreyscale300,
    Color? surfaceGreyscale200,
    Color? surfaceGreyscale100,
    Color? surfaceGreyscale50,
    Color? surfaceLightDarkDark1,
    Color? surfaceLightDarkDark2,
    Color? surfaceLightDarkDark3,
    Color? surfaceLightDarkDark6,
    Color? surfaceLightDarkDark7,
    Color? surfaceBackgroundBackgroundTeal,
    Color? surfaceBackgroundBackgroundPurple,
    Color? surfaceBackgroundBackgroundRed,
    Color? surfaceBackgroundBackgroundBlue,
    Color? surfaceBackgroundBackgroundGreen,
    Color? surfaceBackgroundBackgroundBrown,
    Color? surfaceBackgroundBackgroundYellow,
    Color? surfaceBackgroundBackgroundOrange,
    Color? surfaceTransparentTransparentTeal,
    Color? surfaceTransparentTransparentPurple,
    Color? surfaceTransparentTransparentRed,
    Color? surfaceTransparentTransparentBlue,
    Color? surfaceTransparentTransparentGreen,
    Color? surfaceTransparentTransparentBrown,
    Color? surfaceTransparentTransparentYellow,
    Color? surfaceTransparentTransparentOrange,
    Color? strokeGeneralBrand,
    Color? strokeGreyscaleGreyscale300,
    Color? strokeGreyscaleGreyscale200,
    Color? strokeGreyscaleGreyscale100,
    Color? strokeGreyscaleGreyscale50,
    Color? strokeGeneralWhite,
    Color? strokeGeneralBlack,
    Color? surfaceTransparentTransparentGrey,
    Color? strokeGreyscaleGreyscale900,
    Color? strokeGreyscaleGreyscale800,
    Color? strokeGreyscaleGreyscale700,
    Color? strokeGreyscaleGreyscale600,
    Color? strokeGreyscaleGreyscale500,
    Color? strokeGreyscaleGreyscale400,
    Color? strokeAlertsStatusLightDisabled,
    Color? strokeAlertsStatusDarkDisabled,
    Color? strokeAlertsStatusButtonDisabled,
    Color? strokeAlertsStatusSuccess,
    Color? strokeAlertsStatusInfo,
    Color? strokeAlertsStatusWarning,
    Color? strokeAlertsStatusError,
    Color? strokeBorderSingleStrokeBorderLight,
    Color? strokeBorderFullStrokeLight,
    Color? strokeBorderSingleStrokeDividerLight,
    Color? textButtonsBrand,
    Color? textButtonsWhite,
    Color? textButtonsGreyscale900,
    Color? surfaceButtonsBrand,
    Color? surfaceButtonsButtonLight,
    Color? surfaceButtonsButtonDark,
    Color? surfaceButtonsSocialMediaLight,
    Color? surfaceButtonsSocialMediaDark,
    Color? surfaceButtonsButtonDisabled,
    Color? surfaceButtonsButton50,
    Color? textButtonsSocialMediaLight,
    Color? surfaceButtonsGreyscaleIcon900,
    Color? surfaceButtonsWhiteIcon,
    Color? textButtonsBrandLight,
    Color? textButtonsWhiteDark,
    Color? textButtonsSocialMediaDark,
    Color? surfaceButtonsBrandLight,
    Color? surfaceButtonsWhiteDark,
    Color? strokeBorderSingleStrokeBorderDark,
    Color? strokeBorderSingleStrokeDividerDark,
    Color? strokeBorderFullStrokeDark,
    Color? surfaceComponentsDropdownLight,
    Color? surfaceComponentsDropdownDark,
    Color? surfaceComponentsModalLight,
    Color? surfaceComponentsModalDark,
    Color? surfaceComponentsButtomBarActionLight,
    Color? surfaceComponentsButtomBarActionDark,
    Color? surfaceComponentsGeneralFrameLight,
    Color? surfaceComponentsGeneralFrameDark,
    Color? surfaceAdditionalsOverColorFrameLight,
    Color? surfaceComponentsDropdownIconLight,
    Color? surfaceComponentsDropdownIconDark,
    Color? surfaceLightDarkLight2,
    Color? surfaceLightDarkLight3,
    Color? surfaceLightDarkLight6,
    Color? surfaceLightDarkLight7,
    Color? surfaceLightDarkLight1,
    Color? surfaceAdditionalsOverColorFrameDark,
    Color? textGeneralTextLight,
    Color? textGeneralTextDark,
    Color? surfaceGeneralSurfaceLight,
    Color? surfaceGeneralSurfaceDark,
    Color? surfaceLightDarkLight8,
    Color? surfaceLightDarkDark8,
    Color? strokeAdditionalsToggle400,
    Color? surfaceLightDarkLight5,
    Color? surfaceLightDarkDark5,
    Color? surfaceComponentsSearchSurfaceLight,
    Color? surfaceComponentsSearchSurfaceDark,
    Color? textComponentsSearchTextLight,
    Color? textComponentsSearchTextDark,
    Color? textComponentsTextFilled,
    Color? surfaceComponentsSurfaceFilled,
    Color? strokeLightDarkLight1,
    Color? strokeLightDarkLight2,
    Color? strokeLightDarkLight3,
    Color? strokeLightDarkLight5,
    Color? strokeLightDarkLight4,
    Color? strokeLightDarkLight7,
    Color? strokeLightDarkLight8,
    Color? strokeLightDarkDark1,
    Color? strokeLightDarkDark2,
    Color? strokeLightDarkDark3,
    Color? strokeLightDarkDark5,
    Color? strokeLightDarkDark4,
    Color? strokeLightDarkDark7,
    Color? strokeLightDarkDark8,
    Color? surfaceBackgroundBackgroundGrey,
    Color? surfaceTagSolidDefaultGrey600,
    Color? surfaceTagInvertedDefaultLight,
    Color? surfaceTagInvertedInfoLight,
    Color? surfaceTagInvertedSuccessLight,
    Color? surfaceTagInvertedWarningLight,
    Color? surfaceTagInvertedErrorLight,
    Color? surfaceTagInvertedDefaultDark,
    Color? strokeAdditionalsTagOutlineDefault600,
    Color? textTagTagSolidDefault600,
    Color? surfaceTagInvertedInfoDark,
    Color? surfaceTagInvertedSuccessDark,
    Color? surfaceTagInvertedWarningDark,
    Color? surfaceTagInvertedErrorDark,
    Color? textTagTagInvertedDefaultLight,
    Color? textTagTagInvertedDefaultDark,
    Color? surfaceComponentsCategoryMenuLight,
    Color? surfaceComponentsCategoryMenuDark,
    Color? textComponentsMenuBarText500,
    Color? surfaceComponentsMenuBarIcon500,
    Color? surfaceComponentsMenuBarSurfaceLight,
    Color? surfaceComponentsMenuBarSurfaceDark,
    Color? strokeLightDarkLight6,
    Color? strokeLightDarkDark6,
    Color? surfaceLightDarkLight4,
    Color? surfaceLightDarkDark4,
    Color? textComponentsTextFormDefault500,
    Color? surfaceComponentsIconFormDefault500,
    Color? textComponentsTextFormDisabled600,
    Color? surfaceComponentsIconFormDisabled600,
    Color? strokeInputFormDefaultFilledLight,
    Color? strokeInputFormReadOnlyLight,
    Color? strokeInputFormDisabledLight,
    Color? strokeInputFormDefaultFilledDark,
    Color? strokeInputFormReadOnlyDark,
    Color? strokeInputFormDisabledDark,
    Color? textInputForm2InputFormDefaultLight,
    Color? textInputForm2InputFormReadOnlyLight,
    Color? textInputForm2InputFormDisabledLight,
    Color? textInputForm2InputFormDefaultDark,
    Color? textInputForm2InputFormReadOnlyDark,
    Color? textInputForm2InputFormDisabledDark,
    Color? surfaceInputForm2DefaultLight,
    Color? surfaceInputForm2ReadOnlyLight,
    Color? surfaceInputForm2DefaultDark,
    Color? surfaceInputForm2ReadOnlyDark,
    Color? surfaceInputForm2ReadOnlyIconLight,
    Color? surfaceInputForm2ReadOnlyIconDark,
    Color? surfaceInputForm2DisabledIconLight,
    Color? surfaceInputForm2DisabledIconDark,
    Color? strokeLightDarkLight0,
    Color? strokeLightDarkDark0,
    Color? surfaceOthersRed,
    Color? surfaceOthersPink,
    Color? surfaceOthersPurple,
    Color? surfaceOthersDeepPurple,
    Color? surfaceOthersIndigo,
    Color? surfaceOthersBlue,
    Color? surfaceOthersLightBlue,
    Color? surfaceOthersCyan,
    Color? surfaceOthersTeal,
    Color? surfaceOthersGreen,
    Color? surfaceOthersLightGreen,
    Color? surfaceOthersLime,
    Color? surfaceOthersYellow,
    Color? surfaceOthersAmber,
    Color? surfaceOthersOrange,
    Color? surfaceOthersDeepOrange,
    Color? surfaceOthersBrown,
    Color? surfaceOthersBlueGrey,
    Color? strokeAdditionalsSearchFormLight,
    Color? strokeAdditionalsSearchFormDark,
  }) {
    return CRColorThemes(
      textGeneralBrand: textGeneralBrand ?? this.textGeneralBrand,
      textGreyscale900: textGreyscale900 ?? this.textGreyscale900,
      textGreyscale800: textGreyscale800 ?? this.textGreyscale800,
      textGreyscale700: textGreyscale700 ?? this.textGreyscale700,
      textGreyscale600: textGreyscale600 ?? this.textGreyscale600,
      textGreyscale500: textGreyscale500 ?? this.textGreyscale500,
      textGreyscale400: textGreyscale400 ?? this.textGreyscale400,
      textGreyscale300: textGreyscale300 ?? this.textGreyscale300,
      textGreyscale200: textGreyscale200 ?? this.textGreyscale200,
      textGreyscale100: textGreyscale100 ?? this.textGreyscale100,
      textGreyscale50: textGreyscale50 ?? this.textGreyscale50,
      textGeneralWhite: textGeneralWhite ?? this.textGeneralWhite,
      textGeneralBlack: textGeneralBlack ?? this.textGeneralBlack,
      textAlertsStatusSuccess:
          textAlertsStatusSuccess ?? this.textAlertsStatusSuccess,
      textAlertsStatusInfo: textAlertsStatusInfo ?? this.textAlertsStatusInfo,
      textAlertsStatusWarning:
          textAlertsStatusWarning ?? this.textAlertsStatusWarning,
      textAlertsStatusError:
          textAlertsStatusError ?? this.textAlertsStatusError,
      surfaceGeneralBrand: surfaceGeneralBrand ?? this.surfaceGeneralBrand,
      surfaceGeneralWhite: surfaceGeneralWhite ?? this.surfaceGeneralWhite,
      surfaceGeneralBlack: surfaceGeneralBlack ?? this.surfaceGeneralBlack,
      surfaceAlertsStatusSuccess:
          surfaceAlertsStatusSuccess ?? this.surfaceAlertsStatusSuccess,
      surfaceAlertsStatusInfo:
          surfaceAlertsStatusInfo ?? this.surfaceAlertsStatusInfo,
      surfaceAlertsStatusWarning:
          surfaceAlertsStatusWarning ?? this.surfaceAlertsStatusWarning,
      surfaceAlertsStatusError:
          surfaceAlertsStatusError ?? this.surfaceAlertsStatusError,
      surfaceAlertsStatusLightDisabled: surfaceAlertsStatusLightDisabled ??
          this.surfaceAlertsStatusLightDisabled,
      surfaceAlertsStatusDarkDisabled: surfaceAlertsStatusDarkDisabled ??
          this.surfaceAlertsStatusDarkDisabled,
      surfaceAlertsStatusButtonDisabled: surfaceAlertsStatusButtonDisabled ??
          this.surfaceAlertsStatusButtonDisabled,
      surfaceGreyscale900: surfaceGreyscale900 ?? this.surfaceGreyscale900,
      surfaceGreyscale800: surfaceGreyscale800 ?? this.surfaceGreyscale800,
      surfaceGreyscale700: surfaceGreyscale700 ?? this.surfaceGreyscale700,
      surfaceGreyscale600: surfaceGreyscale600 ?? this.surfaceGreyscale600,
      surfaceGreyscale500: surfaceGreyscale500 ?? this.surfaceGreyscale500,
      surfaceGreyscale400: surfaceGreyscale400 ?? this.surfaceGreyscale400,
      surfaceGreyscale300: surfaceGreyscale300 ?? this.surfaceGreyscale300,
      surfaceGreyscale200: surfaceGreyscale200 ?? this.surfaceGreyscale200,
      surfaceGreyscale100: surfaceGreyscale100 ?? this.surfaceGreyscale100,
      surfaceGreyscale50: surfaceGreyscale50 ?? this.surfaceGreyscale50,
      surfaceLightDarkDark1:
          surfaceLightDarkDark1 ?? this.surfaceLightDarkDark1,
      surfaceLightDarkDark2:
          surfaceLightDarkDark2 ?? this.surfaceLightDarkDark2,
      surfaceLightDarkDark3:
          surfaceLightDarkDark3 ?? this.surfaceLightDarkDark3,
      surfaceLightDarkDark6:
          surfaceLightDarkDark6 ?? this.surfaceLightDarkDark6,
      surfaceLightDarkDark7:
          surfaceLightDarkDark7 ?? this.surfaceLightDarkDark7,
      surfaceBackgroundBackgroundTeal: surfaceBackgroundBackgroundTeal ??
          this.surfaceBackgroundBackgroundTeal,
      surfaceBackgroundBackgroundPurple: surfaceBackgroundBackgroundPurple ??
          this.surfaceBackgroundBackgroundPurple,
      surfaceBackgroundBackgroundRed:
          surfaceBackgroundBackgroundRed ?? this.surfaceBackgroundBackgroundRed,
      surfaceBackgroundBackgroundBlue: surfaceBackgroundBackgroundBlue ??
          this.surfaceBackgroundBackgroundBlue,
      surfaceBackgroundBackgroundGreen: surfaceBackgroundBackgroundGreen ??
          this.surfaceBackgroundBackgroundGreen,
      surfaceBackgroundBackgroundBrown: surfaceBackgroundBackgroundBrown ??
          this.surfaceBackgroundBackgroundBrown,
      surfaceBackgroundBackgroundYellow: surfaceBackgroundBackgroundYellow ??
          this.surfaceBackgroundBackgroundYellow,
      surfaceBackgroundBackgroundOrange: surfaceBackgroundBackgroundOrange ??
          this.surfaceBackgroundBackgroundOrange,
      surfaceTransparentTransparentTeal: surfaceTransparentTransparentTeal ??
          this.surfaceTransparentTransparentTeal,
      surfaceTransparentTransparentPurple:
          surfaceTransparentTransparentPurple ??
              this.surfaceTransparentTransparentPurple,
      surfaceTransparentTransparentRed: surfaceTransparentTransparentRed ??
          this.surfaceTransparentTransparentRed,
      surfaceTransparentTransparentBlue: surfaceTransparentTransparentBlue ??
          this.surfaceTransparentTransparentBlue,
      surfaceTransparentTransparentGreen: surfaceTransparentTransparentGreen ??
          this.surfaceTransparentTransparentGreen,
      surfaceTransparentTransparentBrown: surfaceTransparentTransparentBrown ??
          this.surfaceTransparentTransparentBrown,
      surfaceTransparentTransparentYellow:
          surfaceTransparentTransparentYellow ??
              this.surfaceTransparentTransparentYellow,
      surfaceTransparentTransparentOrange:
          surfaceTransparentTransparentOrange ??
              this.surfaceTransparentTransparentOrange,
      strokeGeneralBrand: strokeGeneralBrand ?? this.strokeGeneralBrand,
      strokeGreyscaleGreyscale300:
          strokeGreyscaleGreyscale300 ?? this.strokeGreyscaleGreyscale300,
      strokeGreyscaleGreyscale200:
          strokeGreyscaleGreyscale200 ?? this.strokeGreyscaleGreyscale200,
      strokeGreyscaleGreyscale100:
          strokeGreyscaleGreyscale100 ?? this.strokeGreyscaleGreyscale100,
      strokeGreyscaleGreyscale50:
          strokeGreyscaleGreyscale50 ?? this.strokeGreyscaleGreyscale50,
      strokeGeneralWhite: strokeGeneralWhite ?? this.strokeGeneralWhite,
      strokeGeneralBlack: strokeGeneralBlack ?? this.strokeGeneralBlack,
      surfaceTransparentTransparentGrey: surfaceTransparentTransparentGrey ??
          this.surfaceTransparentTransparentGrey,
      strokeGreyscaleGreyscale900:
          strokeGreyscaleGreyscale900 ?? this.strokeGreyscaleGreyscale900,
      strokeGreyscaleGreyscale800:
          strokeGreyscaleGreyscale800 ?? this.strokeGreyscaleGreyscale800,
      strokeGreyscaleGreyscale700:
          strokeGreyscaleGreyscale700 ?? this.strokeGreyscaleGreyscale700,
      strokeGreyscaleGreyscale600:
          strokeGreyscaleGreyscale600 ?? this.strokeGreyscaleGreyscale600,
      strokeGreyscaleGreyscale500:
          strokeGreyscaleGreyscale500 ?? this.strokeGreyscaleGreyscale500,
      strokeGreyscaleGreyscale400:
          strokeGreyscaleGreyscale400 ?? this.strokeGreyscaleGreyscale400,
      strokeAlertsStatusLightDisabled: strokeAlertsStatusLightDisabled ??
          this.strokeAlertsStatusLightDisabled,
      strokeAlertsStatusDarkDisabled:
          strokeAlertsStatusDarkDisabled ?? this.strokeAlertsStatusDarkDisabled,
      strokeAlertsStatusButtonDisabled: strokeAlertsStatusButtonDisabled ??
          this.strokeAlertsStatusButtonDisabled,
      strokeAlertsStatusSuccess:
          strokeAlertsStatusSuccess ?? this.strokeAlertsStatusSuccess,
      strokeAlertsStatusInfo:
          strokeAlertsStatusInfo ?? this.strokeAlertsStatusInfo,
      strokeAlertsStatusWarning:
          strokeAlertsStatusWarning ?? this.strokeAlertsStatusWarning,
      strokeAlertsStatusError:
          strokeAlertsStatusError ?? this.strokeAlertsStatusError,
      strokeBorderSingleStrokeBorderLight:
          strokeBorderSingleStrokeBorderLight ??
              this.strokeBorderSingleStrokeBorderLight,
      strokeBorderFullStrokeLight:
          strokeBorderFullStrokeLight ?? this.strokeBorderFullStrokeLight,
      strokeBorderSingleStrokeDividerLight:
          strokeBorderSingleStrokeDividerLight ??
              this.strokeBorderSingleStrokeDividerLight,
      textButtonsBrand: textButtonsBrand ?? this.textButtonsBrand,
      textButtonsWhite: textButtonsWhite ?? this.textButtonsWhite,
      textButtonsGreyscale900:
          textButtonsGreyscale900 ?? this.textButtonsGreyscale900,
      surfaceButtonsBrand: surfaceButtonsBrand ?? this.surfaceButtonsBrand,
      surfaceButtonsButtonLight:
          surfaceButtonsButtonLight ?? this.surfaceButtonsButtonLight,
      surfaceButtonsButtonDark:
          surfaceButtonsButtonDark ?? this.surfaceButtonsButtonDark,
      surfaceButtonsSocialMediaLight:
          surfaceButtonsSocialMediaLight ?? this.surfaceButtonsSocialMediaLight,
      surfaceButtonsSocialMediaDark:
          surfaceButtonsSocialMediaDark ?? this.surfaceButtonsSocialMediaDark,
      surfaceButtonsButtonDisabled:
          surfaceButtonsButtonDisabled ?? this.surfaceButtonsButtonDisabled,
      surfaceButtonsButton50:
          surfaceButtonsButton50 ?? this.surfaceButtonsButton50,
      textButtonsSocialMediaLight:
          textButtonsSocialMediaLight ?? this.textButtonsSocialMediaLight,
      surfaceButtonsGreyscaleIcon900:
          surfaceButtonsGreyscaleIcon900 ?? this.surfaceButtonsGreyscaleIcon900,
      surfaceButtonsWhiteIcon:
          surfaceButtonsWhiteIcon ?? this.surfaceButtonsWhiteIcon,
      textButtonsBrandLight:
          textButtonsBrandLight ?? this.textButtonsBrandLight,
      textButtonsWhiteDark: textButtonsWhiteDark ?? this.textButtonsWhiteDark,
      textButtonsSocialMediaDark:
          textButtonsSocialMediaDark ?? this.textButtonsSocialMediaDark,
      surfaceButtonsBrandLight:
          surfaceButtonsBrandLight ?? this.surfaceButtonsBrandLight,
      surfaceButtonsWhiteDark:
          surfaceButtonsWhiteDark ?? this.surfaceButtonsWhiteDark,
      strokeBorderSingleStrokeBorderDark: strokeBorderSingleStrokeBorderDark ??
          this.strokeBorderSingleStrokeBorderDark,
      strokeBorderSingleStrokeDividerDark:
          strokeBorderSingleStrokeDividerDark ??
              this.strokeBorderSingleStrokeDividerDark,
      strokeBorderFullStrokeDark:
          strokeBorderFullStrokeDark ?? this.strokeBorderFullStrokeDark,
      surfaceComponentsDropdownLight:
          surfaceComponentsDropdownLight ?? this.surfaceComponentsDropdownLight,
      surfaceComponentsDropdownDark:
          surfaceComponentsDropdownDark ?? this.surfaceComponentsDropdownDark,
      surfaceComponentsModalLight:
          surfaceComponentsModalLight ?? this.surfaceComponentsModalLight,
      surfaceComponentsModalDark:
          surfaceComponentsModalDark ?? this.surfaceComponentsModalDark,
      surfaceComponentsButtomBarActionLight:
          surfaceComponentsButtomBarActionLight ??
              this.surfaceComponentsButtomBarActionLight,
      surfaceComponentsButtomBarActionDark:
          surfaceComponentsButtomBarActionDark ??
              this.surfaceComponentsButtomBarActionDark,
      surfaceComponentsGeneralFrameLight: surfaceComponentsGeneralFrameLight ??
          this.surfaceComponentsGeneralFrameLight,
      surfaceComponentsGeneralFrameDark: surfaceComponentsGeneralFrameDark ??
          this.surfaceComponentsGeneralFrameDark,
      surfaceAdditionalsOverColorFrameLight:
          surfaceAdditionalsOverColorFrameLight ??
              this.surfaceAdditionalsOverColorFrameLight,
      surfaceComponentsDropdownIconLight: surfaceComponentsDropdownIconLight ??
          this.surfaceComponentsDropdownIconLight,
      surfaceComponentsDropdownIconDark: surfaceComponentsDropdownIconDark ??
          this.surfaceComponentsDropdownIconDark,
      surfaceLightDarkLight2:
          surfaceLightDarkLight2 ?? this.surfaceLightDarkLight2,
      surfaceLightDarkLight3:
          surfaceLightDarkLight3 ?? this.surfaceLightDarkLight3,
      surfaceLightDarkLight6:
          surfaceLightDarkLight6 ?? this.surfaceLightDarkLight6,
      surfaceLightDarkLight7:
          surfaceLightDarkLight7 ?? this.surfaceLightDarkLight7,
      surfaceLightDarkLight1:
          surfaceLightDarkLight1 ?? this.surfaceLightDarkLight1,
      surfaceAdditionalsOverColorFrameDark:
          surfaceAdditionalsOverColorFrameDark ??
              this.surfaceAdditionalsOverColorFrameDark,
      textGeneralTextLight: textGeneralTextLight ?? this.textGeneralTextLight,
      textGeneralTextDark: textGeneralTextDark ?? this.textGeneralTextDark,
      surfaceGeneralSurfaceLight:
          surfaceGeneralSurfaceLight ?? this.surfaceGeneralSurfaceLight,
      surfaceGeneralSurfaceDark:
          surfaceGeneralSurfaceDark ?? this.surfaceGeneralSurfaceDark,
      surfaceLightDarkLight8:
          surfaceLightDarkLight8 ?? this.surfaceLightDarkLight8,
      surfaceLightDarkDark8:
          surfaceLightDarkDark8 ?? this.surfaceLightDarkDark8,
      strokeAdditionalsToggle400:
          strokeAdditionalsToggle400 ?? this.strokeAdditionalsToggle400,
      surfaceLightDarkLight5:
          surfaceLightDarkLight5 ?? this.surfaceLightDarkLight5,
      surfaceLightDarkDark5:
          surfaceLightDarkDark5 ?? this.surfaceLightDarkDark5,
      surfaceComponentsSearchSurfaceLight:
          surfaceComponentsSearchSurfaceLight ??
              this.surfaceComponentsSearchSurfaceLight,
      surfaceComponentsSearchSurfaceDark: surfaceComponentsSearchSurfaceDark ??
          this.surfaceComponentsSearchSurfaceDark,
      textComponentsSearchTextLight:
          textComponentsSearchTextLight ?? this.textComponentsSearchTextLight,
      textComponentsSearchTextDark:
          textComponentsSearchTextDark ?? this.textComponentsSearchTextDark,
      textComponentsTextFilled:
          textComponentsTextFilled ?? this.textComponentsTextFilled,
      surfaceComponentsSurfaceFilled:
          surfaceComponentsSurfaceFilled ?? this.surfaceComponentsSurfaceFilled,
      strokeLightDarkLight1:
          strokeLightDarkLight1 ?? this.strokeLightDarkLight1,
      strokeLightDarkLight2:
          strokeLightDarkLight2 ?? this.strokeLightDarkLight2,
      strokeLightDarkLight3:
          strokeLightDarkLight3 ?? this.strokeLightDarkLight3,
      strokeLightDarkLight5:
          strokeLightDarkLight5 ?? this.strokeLightDarkLight5,
      strokeLightDarkLight4:
          strokeLightDarkLight4 ?? this.strokeLightDarkLight4,
      strokeLightDarkLight7:
          strokeLightDarkLight7 ?? this.strokeLightDarkLight7,
      strokeLightDarkLight8:
          strokeLightDarkLight8 ?? this.strokeLightDarkLight8,
      strokeLightDarkDark1: strokeLightDarkDark1 ?? this.strokeLightDarkDark1,
      strokeLightDarkDark2: strokeLightDarkDark2 ?? this.strokeLightDarkDark2,
      strokeLightDarkDark3: strokeLightDarkDark3 ?? this.strokeLightDarkDark3,
      strokeLightDarkDark5: strokeLightDarkDark5 ?? this.strokeLightDarkDark5,
      strokeLightDarkDark4: strokeLightDarkDark4 ?? this.strokeLightDarkDark4,
      strokeLightDarkDark7: strokeLightDarkDark7 ?? this.strokeLightDarkDark7,
      strokeLightDarkDark8: strokeLightDarkDark8 ?? this.strokeLightDarkDark8,
      surfaceBackgroundBackgroundGrey: surfaceBackgroundBackgroundGrey ??
          this.surfaceBackgroundBackgroundGrey,
      surfaceTagSolidDefaultGrey600:
          surfaceTagSolidDefaultGrey600 ?? this.surfaceTagSolidDefaultGrey600,
      surfaceTagInvertedDefaultLight:
          surfaceTagInvertedDefaultLight ?? this.surfaceTagInvertedDefaultLight,
      surfaceTagInvertedInfoLight:
          surfaceTagInvertedInfoLight ?? this.surfaceTagInvertedInfoLight,
      surfaceTagInvertedSuccessLight:
          surfaceTagInvertedSuccessLight ?? this.surfaceTagInvertedSuccessLight,
      surfaceTagInvertedWarningLight:
          surfaceTagInvertedWarningLight ?? this.surfaceTagInvertedWarningLight,
      surfaceTagInvertedErrorLight:
          surfaceTagInvertedErrorLight ?? this.surfaceTagInvertedErrorLight,
      surfaceTagInvertedDefaultDark:
          surfaceTagInvertedDefaultDark ?? this.surfaceTagInvertedDefaultDark,
      strokeAdditionalsTagOutlineDefault600:
          strokeAdditionalsTagOutlineDefault600 ??
              this.strokeAdditionalsTagOutlineDefault600,
      textTagTagSolidDefault600:
          textTagTagSolidDefault600 ?? this.textTagTagSolidDefault600,
      surfaceTagInvertedInfoDark:
          surfaceTagInvertedInfoDark ?? this.surfaceTagInvertedInfoDark,
      surfaceTagInvertedSuccessDark:
          surfaceTagInvertedSuccessDark ?? this.surfaceTagInvertedSuccessDark,
      surfaceTagInvertedWarningDark:
          surfaceTagInvertedWarningDark ?? this.surfaceTagInvertedWarningDark,
      surfaceTagInvertedErrorDark:
          surfaceTagInvertedErrorDark ?? this.surfaceTagInvertedErrorDark,
      textTagTagInvertedDefaultLight:
          textTagTagInvertedDefaultLight ?? this.textTagTagInvertedDefaultLight,
      textTagTagInvertedDefaultDark:
          textTagTagInvertedDefaultDark ?? this.textTagTagInvertedDefaultDark,
      surfaceComponentsCategoryMenuLight: surfaceComponentsCategoryMenuLight ??
          this.surfaceComponentsCategoryMenuLight,
      surfaceComponentsCategoryMenuDark: surfaceComponentsCategoryMenuDark ??
          this.surfaceComponentsCategoryMenuDark,
      textComponentsMenuBarText500:
          textComponentsMenuBarText500 ?? this.textComponentsMenuBarText500,
      surfaceComponentsMenuBarIcon500: surfaceComponentsMenuBarIcon500 ??
          this.surfaceComponentsMenuBarIcon500,
      surfaceComponentsMenuBarSurfaceLight:
          surfaceComponentsMenuBarSurfaceLight ??
              this.surfaceComponentsMenuBarSurfaceLight,
      surfaceComponentsMenuBarSurfaceDark:
          surfaceComponentsMenuBarSurfaceDark ??
              this.surfaceComponentsMenuBarSurfaceDark,
      strokeLightDarkLight6:
          strokeLightDarkLight6 ?? this.strokeLightDarkLight6,
      strokeLightDarkDark6: strokeLightDarkDark6 ?? this.strokeLightDarkDark6,
      surfaceLightDarkLight4:
          surfaceLightDarkLight4 ?? this.surfaceLightDarkLight4,
      surfaceLightDarkDark4:
          surfaceLightDarkDark4 ?? this.surfaceLightDarkDark4,
      textComponentsTextFormDefault500: textComponentsTextFormDefault500 ??
          this.textComponentsTextFormDefault500,
      surfaceComponentsIconFormDefault500:
          surfaceComponentsIconFormDefault500 ??
              this.surfaceComponentsIconFormDefault500,
      textComponentsTextFormDisabled600: textComponentsTextFormDisabled600 ??
          this.textComponentsTextFormDisabled600,
      surfaceComponentsIconFormDisabled600:
          surfaceComponentsIconFormDisabled600 ??
              this.surfaceComponentsIconFormDisabled600,
      strokeInputFormDefaultFilledLight: strokeInputFormDefaultFilledLight ??
          this.strokeInputFormDefaultFilledLight,
      strokeInputFormReadOnlyLight:
          strokeInputFormReadOnlyLight ?? this.strokeInputFormReadOnlyLight,
      strokeInputFormDisabledLight:
          strokeInputFormDisabledLight ?? this.strokeInputFormDisabledLight,
      strokeInputFormDefaultFilledDark: strokeInputFormDefaultFilledDark ??
          this.strokeInputFormDefaultFilledDark,
      strokeInputFormReadOnlyDark:
          strokeInputFormReadOnlyDark ?? this.strokeInputFormReadOnlyDark,
      strokeInputFormDisabledDark:
          strokeInputFormDisabledDark ?? this.strokeInputFormDisabledDark,
      textInputForm2InputFormDefaultLight:
          textInputForm2InputFormDefaultLight ??
              this.textInputForm2InputFormDefaultLight,
      textInputForm2InputFormReadOnlyLight:
          textInputForm2InputFormReadOnlyLight ??
              this.textInputForm2InputFormReadOnlyLight,
      textInputForm2InputFormDisabledLight:
          textInputForm2InputFormDisabledLight ??
              this.textInputForm2InputFormDisabledLight,
      textInputForm2InputFormDefaultDark: textInputForm2InputFormDefaultDark ??
          this.textInputForm2InputFormDefaultDark,
      textInputForm2InputFormReadOnlyDark:
          textInputForm2InputFormReadOnlyDark ??
              this.textInputForm2InputFormReadOnlyDark,
      textInputForm2InputFormDisabledDark:
          textInputForm2InputFormDisabledDark ??
              this.textInputForm2InputFormDisabledDark,
      surfaceInputForm2DefaultLight:
          surfaceInputForm2DefaultLight ?? this.surfaceInputForm2DefaultLight,
      surfaceInputForm2ReadOnlyLight:
          surfaceInputForm2ReadOnlyLight ?? this.surfaceInputForm2ReadOnlyLight,
      surfaceInputForm2DefaultDark:
          surfaceInputForm2DefaultDark ?? this.surfaceInputForm2DefaultDark,
      surfaceInputForm2ReadOnlyDark:
          surfaceInputForm2ReadOnlyDark ?? this.surfaceInputForm2ReadOnlyDark,
      surfaceInputForm2ReadOnlyIconLight: surfaceInputForm2ReadOnlyIconLight ??
          this.surfaceInputForm2ReadOnlyIconLight,
      surfaceInputForm2ReadOnlyIconDark: surfaceInputForm2ReadOnlyIconDark ??
          this.surfaceInputForm2ReadOnlyIconDark,
      surfaceInputForm2DisabledIconLight: surfaceInputForm2DisabledIconLight ??
          this.surfaceInputForm2DisabledIconLight,
      surfaceInputForm2DisabledIconDark: surfaceInputForm2DisabledIconDark ??
          this.surfaceInputForm2DisabledIconDark,
      strokeLightDarkLight0:
          strokeLightDarkLight0 ?? this.strokeLightDarkLight0,
      strokeLightDarkDark0: strokeLightDarkDark0 ?? this.strokeLightDarkDark0,
      surfaceOthersRed: surfaceOthersRed ?? this.surfaceOthersRed,
      surfaceOthersPink: surfaceOthersPink ?? this.surfaceOthersPink,
      surfaceOthersPurple: surfaceOthersPurple ?? this.surfaceOthersPurple,
      surfaceOthersDeepPurple:
          surfaceOthersDeepPurple ?? this.surfaceOthersDeepPurple,
      surfaceOthersIndigo: surfaceOthersIndigo ?? this.surfaceOthersIndigo,
      surfaceOthersBlue: surfaceOthersBlue ?? this.surfaceOthersBlue,
      surfaceOthersLightBlue:
          surfaceOthersLightBlue ?? this.surfaceOthersLightBlue,
      surfaceOthersCyan: surfaceOthersCyan ?? this.surfaceOthersCyan,
      surfaceOthersTeal: surfaceOthersTeal ?? this.surfaceOthersTeal,
      surfaceOthersGreen: surfaceOthersGreen ?? this.surfaceOthersGreen,
      surfaceOthersLightGreen:
          surfaceOthersLightGreen ?? this.surfaceOthersLightGreen,
      surfaceOthersLime: surfaceOthersLime ?? this.surfaceOthersLime,
      surfaceOthersYellow: surfaceOthersYellow ?? this.surfaceOthersYellow,
      surfaceOthersAmber: surfaceOthersAmber ?? this.surfaceOthersAmber,
      surfaceOthersOrange: surfaceOthersOrange ?? this.surfaceOthersOrange,
      surfaceOthersDeepOrange:
          surfaceOthersDeepOrange ?? this.surfaceOthersDeepOrange,
      surfaceOthersBrown: surfaceOthersBrown ?? this.surfaceOthersBrown,
      surfaceOthersBlueGrey:
          surfaceOthersBlueGrey ?? this.surfaceOthersBlueGrey,
      strokeAdditionalsSearchFormLight: strokeAdditionalsSearchFormLight ??
          this.strokeAdditionalsSearchFormLight,
      strokeAdditionalsSearchFormDark: strokeAdditionalsSearchFormDark ??
          this.strokeAdditionalsSearchFormDark,
    );
  }

  @override
  CRColorThemes lerp(ThemeExtension<CRColorThemes>? other, double t) {
    if (other is! CRColorThemes) return this;
    final a = this;
    final b = other;
    return CRColorThemes(
      textGeneralBrand: Color.lerp(a.textGeneralBrand, b.textGeneralBrand, t)!,
      textGreyscale900: Color.lerp(a.textGreyscale900, b.textGreyscale900, t)!,
      textGreyscale800: Color.lerp(a.textGreyscale800, b.textGreyscale800, t)!,
      textGreyscale700: Color.lerp(a.textGreyscale700, b.textGreyscale700, t)!,
      textGreyscale600: Color.lerp(a.textGreyscale600, b.textGreyscale600, t)!,
      textGreyscale500: Color.lerp(a.textGreyscale500, b.textGreyscale500, t)!,
      textGreyscale400: Color.lerp(a.textGreyscale400, b.textGreyscale400, t)!,
      textGreyscale300: Color.lerp(a.textGreyscale300, b.textGreyscale300, t)!,
      textGreyscale200: Color.lerp(a.textGreyscale200, b.textGreyscale200, t)!,
      textGreyscale100: Color.lerp(a.textGreyscale100, b.textGreyscale100, t)!,
      textGreyscale50: Color.lerp(a.textGreyscale50, b.textGreyscale50, t)!,
      textGeneralWhite: Color.lerp(a.textGeneralWhite, b.textGeneralWhite, t)!,
      textGeneralBlack: Color.lerp(a.textGeneralBlack, b.textGeneralBlack, t)!,
      textAlertsStatusSuccess:
          Color.lerp(a.textAlertsStatusSuccess, b.textAlertsStatusSuccess, t)!,
      textAlertsStatusInfo:
          Color.lerp(a.textAlertsStatusInfo, b.textAlertsStatusInfo, t)!,
      textAlertsStatusWarning:
          Color.lerp(a.textAlertsStatusWarning, b.textAlertsStatusWarning, t)!,
      textAlertsStatusError:
          Color.lerp(a.textAlertsStatusError, b.textAlertsStatusError, t)!,
      surfaceGeneralBrand:
          Color.lerp(a.surfaceGeneralBrand, b.surfaceGeneralBrand, t)!,
      surfaceGeneralWhite:
          Color.lerp(a.surfaceGeneralWhite, b.surfaceGeneralWhite, t)!,
      surfaceGeneralBlack:
          Color.lerp(a.surfaceGeneralBlack, b.surfaceGeneralBlack, t)!,
      surfaceAlertsStatusSuccess: Color.lerp(
          a.surfaceAlertsStatusSuccess, b.surfaceAlertsStatusSuccess, t)!,
      surfaceAlertsStatusInfo:
          Color.lerp(a.surfaceAlertsStatusInfo, b.surfaceAlertsStatusInfo, t)!,
      surfaceAlertsStatusWarning: Color.lerp(
          a.surfaceAlertsStatusWarning, b.surfaceAlertsStatusWarning, t)!,
      surfaceAlertsStatusError: Color.lerp(
          a.surfaceAlertsStatusError, b.surfaceAlertsStatusError, t)!,
      surfaceAlertsStatusLightDisabled: Color.lerp(
          a.surfaceAlertsStatusLightDisabled,
          b.surfaceAlertsStatusLightDisabled,
          t)!,
      surfaceAlertsStatusDarkDisabled: Color.lerp(
          a.surfaceAlertsStatusDarkDisabled,
          b.surfaceAlertsStatusDarkDisabled,
          t)!,
      surfaceAlertsStatusButtonDisabled: Color.lerp(
          a.surfaceAlertsStatusButtonDisabled,
          b.surfaceAlertsStatusButtonDisabled,
          t)!,
      surfaceGreyscale900:
          Color.lerp(a.surfaceGreyscale900, b.surfaceGreyscale900, t)!,
      surfaceGreyscale800:
          Color.lerp(a.surfaceGreyscale800, b.surfaceGreyscale800, t)!,
      surfaceGreyscale700:
          Color.lerp(a.surfaceGreyscale700, b.surfaceGreyscale700, t)!,
      surfaceGreyscale600:
          Color.lerp(a.surfaceGreyscale600, b.surfaceGreyscale600, t)!,
      surfaceGreyscale500:
          Color.lerp(a.surfaceGreyscale500, b.surfaceGreyscale500, t)!,
      surfaceGreyscale400:
          Color.lerp(a.surfaceGreyscale400, b.surfaceGreyscale400, t)!,
      surfaceGreyscale300:
          Color.lerp(a.surfaceGreyscale300, b.surfaceGreyscale300, t)!,
      surfaceGreyscale200:
          Color.lerp(a.surfaceGreyscale200, b.surfaceGreyscale200, t)!,
      surfaceGreyscale100:
          Color.lerp(a.surfaceGreyscale100, b.surfaceGreyscale100, t)!,
      surfaceGreyscale50:
          Color.lerp(a.surfaceGreyscale50, b.surfaceGreyscale50, t)!,
      surfaceLightDarkDark1:
          Color.lerp(a.surfaceLightDarkDark1, b.surfaceLightDarkDark1, t)!,
      surfaceLightDarkDark2:
          Color.lerp(a.surfaceLightDarkDark2, b.surfaceLightDarkDark2, t)!,
      surfaceLightDarkDark3:
          Color.lerp(a.surfaceLightDarkDark3, b.surfaceLightDarkDark3, t)!,
      surfaceLightDarkDark6:
          Color.lerp(a.surfaceLightDarkDark6, b.surfaceLightDarkDark6, t)!,
      surfaceLightDarkDark7:
          Color.lerp(a.surfaceLightDarkDark7, b.surfaceLightDarkDark7, t)!,
      surfaceBackgroundBackgroundTeal: Color.lerp(
          a.surfaceBackgroundBackgroundTeal,
          b.surfaceBackgroundBackgroundTeal,
          t)!,
      surfaceBackgroundBackgroundPurple: Color.lerp(
          a.surfaceBackgroundBackgroundPurple,
          b.surfaceBackgroundBackgroundPurple,
          t)!,
      surfaceBackgroundBackgroundRed: Color.lerp(
          a.surfaceBackgroundBackgroundRed,
          b.surfaceBackgroundBackgroundRed,
          t)!,
      surfaceBackgroundBackgroundBlue: Color.lerp(
          a.surfaceBackgroundBackgroundBlue,
          b.surfaceBackgroundBackgroundBlue,
          t)!,
      surfaceBackgroundBackgroundGreen: Color.lerp(
          a.surfaceBackgroundBackgroundGreen,
          b.surfaceBackgroundBackgroundGreen,
          t)!,
      surfaceBackgroundBackgroundBrown: Color.lerp(
          a.surfaceBackgroundBackgroundBrown,
          b.surfaceBackgroundBackgroundBrown,
          t)!,
      surfaceBackgroundBackgroundYellow: Color.lerp(
          a.surfaceBackgroundBackgroundYellow,
          b.surfaceBackgroundBackgroundYellow,
          t)!,
      surfaceBackgroundBackgroundOrange: Color.lerp(
          a.surfaceBackgroundBackgroundOrange,
          b.surfaceBackgroundBackgroundOrange,
          t)!,
      surfaceTransparentTransparentTeal: Color.lerp(
          a.surfaceTransparentTransparentTeal,
          b.surfaceTransparentTransparentTeal,
          t)!,
      surfaceTransparentTransparentPurple: Color.lerp(
          a.surfaceTransparentTransparentPurple,
          b.surfaceTransparentTransparentPurple,
          t)!,
      surfaceTransparentTransparentRed: Color.lerp(
          a.surfaceTransparentTransparentRed,
          b.surfaceTransparentTransparentRed,
          t)!,
      surfaceTransparentTransparentBlue: Color.lerp(
          a.surfaceTransparentTransparentBlue,
          b.surfaceTransparentTransparentBlue,
          t)!,
      surfaceTransparentTransparentGreen: Color.lerp(
          a.surfaceTransparentTransparentGreen,
          b.surfaceTransparentTransparentGreen,
          t)!,
      surfaceTransparentTransparentBrown: Color.lerp(
          a.surfaceTransparentTransparentBrown,
          b.surfaceTransparentTransparentBrown,
          t)!,
      surfaceTransparentTransparentYellow: Color.lerp(
          a.surfaceTransparentTransparentYellow,
          b.surfaceTransparentTransparentYellow,
          t)!,
      surfaceTransparentTransparentOrange: Color.lerp(
          a.surfaceTransparentTransparentOrange,
          b.surfaceTransparentTransparentOrange,
          t)!,
      strokeGeneralBrand:
          Color.lerp(a.strokeGeneralBrand, b.strokeGeneralBrand, t)!,
      strokeGreyscaleGreyscale300: Color.lerp(
          a.strokeGreyscaleGreyscale300, b.strokeGreyscaleGreyscale300, t)!,
      strokeGreyscaleGreyscale200: Color.lerp(
          a.strokeGreyscaleGreyscale200, b.strokeGreyscaleGreyscale200, t)!,
      strokeGreyscaleGreyscale100: Color.lerp(
          a.strokeGreyscaleGreyscale100, b.strokeGreyscaleGreyscale100, t)!,
      strokeGreyscaleGreyscale50: Color.lerp(
          a.strokeGreyscaleGreyscale50, b.strokeGreyscaleGreyscale50, t)!,
      strokeGeneralWhite:
          Color.lerp(a.strokeGeneralWhite, b.strokeGeneralWhite, t)!,
      strokeGeneralBlack:
          Color.lerp(a.strokeGeneralBlack, b.strokeGeneralBlack, t)!,
      surfaceTransparentTransparentGrey: Color.lerp(
          a.surfaceTransparentTransparentGrey,
          b.surfaceTransparentTransparentGrey,
          t)!,
      strokeGreyscaleGreyscale900: Color.lerp(
          a.strokeGreyscaleGreyscale900, b.strokeGreyscaleGreyscale900, t)!,
      strokeGreyscaleGreyscale800: Color.lerp(
          a.strokeGreyscaleGreyscale800, b.strokeGreyscaleGreyscale800, t)!,
      strokeGreyscaleGreyscale700: Color.lerp(
          a.strokeGreyscaleGreyscale700, b.strokeGreyscaleGreyscale700, t)!,
      strokeGreyscaleGreyscale600: Color.lerp(
          a.strokeGreyscaleGreyscale600, b.strokeGreyscaleGreyscale600, t)!,
      strokeGreyscaleGreyscale500: Color.lerp(
          a.strokeGreyscaleGreyscale500, b.strokeGreyscaleGreyscale500, t)!,
      strokeGreyscaleGreyscale400: Color.lerp(
          a.strokeGreyscaleGreyscale400, b.strokeGreyscaleGreyscale400, t)!,
      strokeAlertsStatusLightDisabled: Color.lerp(
          a.strokeAlertsStatusLightDisabled,
          b.strokeAlertsStatusLightDisabled,
          t)!,
      strokeAlertsStatusDarkDisabled: Color.lerp(
          a.strokeAlertsStatusDarkDisabled,
          b.strokeAlertsStatusDarkDisabled,
          t)!,
      strokeAlertsStatusButtonDisabled: Color.lerp(
          a.strokeAlertsStatusButtonDisabled,
          b.strokeAlertsStatusButtonDisabled,
          t)!,
      strokeAlertsStatusSuccess: Color.lerp(
          a.strokeAlertsStatusSuccess, b.strokeAlertsStatusSuccess, t)!,
      strokeAlertsStatusInfo:
          Color.lerp(a.strokeAlertsStatusInfo, b.strokeAlertsStatusInfo, t)!,
      strokeAlertsStatusWarning: Color.lerp(
          a.strokeAlertsStatusWarning, b.strokeAlertsStatusWarning, t)!,
      strokeAlertsStatusError:
          Color.lerp(a.strokeAlertsStatusError, b.strokeAlertsStatusError, t)!,
      strokeBorderSingleStrokeBorderLight: Color.lerp(
          a.strokeBorderSingleStrokeBorderLight,
          b.strokeBorderSingleStrokeBorderLight,
          t)!,
      strokeBorderFullStrokeLight: Color.lerp(
          a.strokeBorderFullStrokeLight, b.strokeBorderFullStrokeLight, t)!,
      strokeBorderSingleStrokeDividerLight: Color.lerp(
          a.strokeBorderSingleStrokeDividerLight,
          b.strokeBorderSingleStrokeDividerLight,
          t)!,
      textButtonsBrand: Color.lerp(a.textButtonsBrand, b.textButtonsBrand, t)!,
      textButtonsWhite: Color.lerp(a.textButtonsWhite, b.textButtonsWhite, t)!,
      textButtonsGreyscale900:
          Color.lerp(a.textButtonsGreyscale900, b.textButtonsGreyscale900, t)!,
      surfaceButtonsBrand:
          Color.lerp(a.surfaceButtonsBrand, b.surfaceButtonsBrand, t)!,
      surfaceButtonsButtonLight: Color.lerp(
          a.surfaceButtonsButtonLight, b.surfaceButtonsButtonLight, t)!,
      surfaceButtonsButtonDark: Color.lerp(
          a.surfaceButtonsButtonDark, b.surfaceButtonsButtonDark, t)!,
      surfaceButtonsSocialMediaLight: Color.lerp(
          a.surfaceButtonsSocialMediaLight,
          b.surfaceButtonsSocialMediaLight,
          t)!,
      surfaceButtonsSocialMediaDark: Color.lerp(
          a.surfaceButtonsSocialMediaDark, b.surfaceButtonsSocialMediaDark, t)!,
      surfaceButtonsButtonDisabled: Color.lerp(
          a.surfaceButtonsButtonDisabled, b.surfaceButtonsButtonDisabled, t)!,
      surfaceButtonsButton50:
          Color.lerp(a.surfaceButtonsButton50, b.surfaceButtonsButton50, t)!,
      textButtonsSocialMediaLight: Color.lerp(
          a.textButtonsSocialMediaLight, b.textButtonsSocialMediaLight, t)!,
      surfaceButtonsGreyscaleIcon900: Color.lerp(
          a.surfaceButtonsGreyscaleIcon900,
          b.surfaceButtonsGreyscaleIcon900,
          t)!,
      surfaceButtonsWhiteIcon:
          Color.lerp(a.surfaceButtonsWhiteIcon, b.surfaceButtonsWhiteIcon, t)!,
      textButtonsBrandLight:
          Color.lerp(a.textButtonsBrandLight, b.textButtonsBrandLight, t)!,
      textButtonsWhiteDark:
          Color.lerp(a.textButtonsWhiteDark, b.textButtonsWhiteDark, t)!,
      textButtonsSocialMediaDark: Color.lerp(
          a.textButtonsSocialMediaDark, b.textButtonsSocialMediaDark, t)!,
      surfaceButtonsBrandLight: Color.lerp(
          a.surfaceButtonsBrandLight, b.surfaceButtonsBrandLight, t)!,
      surfaceButtonsWhiteDark:
          Color.lerp(a.surfaceButtonsWhiteDark, b.surfaceButtonsWhiteDark, t)!,
      strokeBorderSingleStrokeBorderDark: Color.lerp(
          a.strokeBorderSingleStrokeBorderDark,
          b.strokeBorderSingleStrokeBorderDark,
          t)!,
      strokeBorderSingleStrokeDividerDark: Color.lerp(
          a.strokeBorderSingleStrokeDividerDark,
          b.strokeBorderSingleStrokeDividerDark,
          t)!,
      strokeBorderFullStrokeDark: Color.lerp(
          a.strokeBorderFullStrokeDark, b.strokeBorderFullStrokeDark, t)!,
      surfaceComponentsDropdownLight: Color.lerp(
          a.surfaceComponentsDropdownLight,
          b.surfaceComponentsDropdownLight,
          t)!,
      surfaceComponentsDropdownDark: Color.lerp(
          a.surfaceComponentsDropdownDark, b.surfaceComponentsDropdownDark, t)!,
      surfaceComponentsModalLight: Color.lerp(
          a.surfaceComponentsModalLight, b.surfaceComponentsModalLight, t)!,
      surfaceComponentsModalDark: Color.lerp(
          a.surfaceComponentsModalDark, b.surfaceComponentsModalDark, t)!,
      surfaceComponentsButtomBarActionLight: Color.lerp(
          a.surfaceComponentsButtomBarActionLight,
          b.surfaceComponentsButtomBarActionLight,
          t)!,
      surfaceComponentsButtomBarActionDark: Color.lerp(
          a.surfaceComponentsButtomBarActionDark,
          b.surfaceComponentsButtomBarActionDark,
          t)!,
      surfaceComponentsGeneralFrameLight: Color.lerp(
          a.surfaceComponentsGeneralFrameLight,
          b.surfaceComponentsGeneralFrameLight,
          t)!,
      surfaceComponentsGeneralFrameDark: Color.lerp(
          a.surfaceComponentsGeneralFrameDark,
          b.surfaceComponentsGeneralFrameDark,
          t)!,
      surfaceAdditionalsOverColorFrameLight: Color.lerp(
          a.surfaceAdditionalsOverColorFrameLight,
          b.surfaceAdditionalsOverColorFrameLight,
          t)!,
      surfaceComponentsDropdownIconLight: Color.lerp(
          a.surfaceComponentsDropdownIconLight,
          b.surfaceComponentsDropdownIconLight,
          t)!,
      surfaceComponentsDropdownIconDark: Color.lerp(
          a.surfaceComponentsDropdownIconDark,
          b.surfaceComponentsDropdownIconDark,
          t)!,
      surfaceLightDarkLight2:
          Color.lerp(a.surfaceLightDarkLight2, b.surfaceLightDarkLight2, t)!,
      surfaceLightDarkLight3:
          Color.lerp(a.surfaceLightDarkLight3, b.surfaceLightDarkLight3, t)!,
      surfaceLightDarkLight6:
          Color.lerp(a.surfaceLightDarkLight6, b.surfaceLightDarkLight6, t)!,
      surfaceLightDarkLight7:
          Color.lerp(a.surfaceLightDarkLight7, b.surfaceLightDarkLight7, t)!,
      surfaceLightDarkLight1:
          Color.lerp(a.surfaceLightDarkLight1, b.surfaceLightDarkLight1, t)!,
      surfaceAdditionalsOverColorFrameDark: Color.lerp(
          a.surfaceAdditionalsOverColorFrameDark,
          b.surfaceAdditionalsOverColorFrameDark,
          t)!,
      textGeneralTextLight:
          Color.lerp(a.textGeneralTextLight, b.textGeneralTextLight, t)!,
      textGeneralTextDark:
          Color.lerp(a.textGeneralTextDark, b.textGeneralTextDark, t)!,
      surfaceGeneralSurfaceLight: Color.lerp(
          a.surfaceGeneralSurfaceLight, b.surfaceGeneralSurfaceLight, t)!,
      surfaceGeneralSurfaceDark: Color.lerp(
          a.surfaceGeneralSurfaceDark, b.surfaceGeneralSurfaceDark, t)!,
      surfaceLightDarkLight8:
          Color.lerp(a.surfaceLightDarkLight8, b.surfaceLightDarkLight8, t)!,
      surfaceLightDarkDark8:
          Color.lerp(a.surfaceLightDarkDark8, b.surfaceLightDarkDark8, t)!,
      strokeAdditionalsToggle400: Color.lerp(
          a.strokeAdditionalsToggle400, b.strokeAdditionalsToggle400, t)!,
      surfaceLightDarkLight5:
          Color.lerp(a.surfaceLightDarkLight5, b.surfaceLightDarkLight5, t)!,
      surfaceLightDarkDark5:
          Color.lerp(a.surfaceLightDarkDark5, b.surfaceLightDarkDark5, t)!,
      surfaceComponentsSearchSurfaceLight: Color.lerp(
          a.surfaceComponentsSearchSurfaceLight,
          b.surfaceComponentsSearchSurfaceLight,
          t)!,
      surfaceComponentsSearchSurfaceDark: Color.lerp(
          a.surfaceComponentsSearchSurfaceDark,
          b.surfaceComponentsSearchSurfaceDark,
          t)!,
      textComponentsSearchTextLight: Color.lerp(
          a.textComponentsSearchTextLight, b.textComponentsSearchTextLight, t)!,
      textComponentsSearchTextDark: Color.lerp(
          a.textComponentsSearchTextDark, b.textComponentsSearchTextDark, t)!,
      textComponentsTextFilled: Color.lerp(
          a.textComponentsTextFilled, b.textComponentsTextFilled, t)!,
      surfaceComponentsSurfaceFilled: Color.lerp(
          a.surfaceComponentsSurfaceFilled,
          b.surfaceComponentsSurfaceFilled,
          t)!,
      strokeLightDarkLight1:
          Color.lerp(a.strokeLightDarkLight1, b.strokeLightDarkLight1, t)!,
      strokeLightDarkLight2:
          Color.lerp(a.strokeLightDarkLight2, b.strokeLightDarkLight2, t)!,
      strokeLightDarkLight3:
          Color.lerp(a.strokeLightDarkLight3, b.strokeLightDarkLight3, t)!,
      strokeLightDarkLight5:
          Color.lerp(a.strokeLightDarkLight5, b.strokeLightDarkLight5, t)!,
      strokeLightDarkLight4:
          Color.lerp(a.strokeLightDarkLight4, b.strokeLightDarkLight4, t)!,
      strokeLightDarkLight7:
          Color.lerp(a.strokeLightDarkLight7, b.strokeLightDarkLight7, t)!,
      strokeLightDarkLight8:
          Color.lerp(a.strokeLightDarkLight8, b.strokeLightDarkLight8, t)!,
      strokeLightDarkDark1:
          Color.lerp(a.strokeLightDarkDark1, b.strokeLightDarkDark1, t)!,
      strokeLightDarkDark2:
          Color.lerp(a.strokeLightDarkDark2, b.strokeLightDarkDark2, t)!,
      strokeLightDarkDark3:
          Color.lerp(a.strokeLightDarkDark3, b.strokeLightDarkDark3, t)!,
      strokeLightDarkDark5:
          Color.lerp(a.strokeLightDarkDark5, b.strokeLightDarkDark5, t)!,
      strokeLightDarkDark4:
          Color.lerp(a.strokeLightDarkDark4, b.strokeLightDarkDark4, t)!,
      strokeLightDarkDark7:
          Color.lerp(a.strokeLightDarkDark7, b.strokeLightDarkDark7, t)!,
      strokeLightDarkDark8:
          Color.lerp(a.strokeLightDarkDark8, b.strokeLightDarkDark8, t)!,
      surfaceBackgroundBackgroundGrey: Color.lerp(
          a.surfaceBackgroundBackgroundGrey,
          b.surfaceBackgroundBackgroundGrey,
          t)!,
      surfaceTagSolidDefaultGrey600: Color.lerp(
          a.surfaceTagSolidDefaultGrey600, b.surfaceTagSolidDefaultGrey600, t)!,
      surfaceTagInvertedDefaultLight: Color.lerp(
          a.surfaceTagInvertedDefaultLight,
          b.surfaceTagInvertedDefaultLight,
          t)!,
      surfaceTagInvertedInfoLight: Color.lerp(
          a.surfaceTagInvertedInfoLight, b.surfaceTagInvertedInfoLight, t)!,
      surfaceTagInvertedSuccessLight: Color.lerp(
          a.surfaceTagInvertedSuccessLight,
          b.surfaceTagInvertedSuccessLight,
          t)!,
      surfaceTagInvertedWarningLight: Color.lerp(
          a.surfaceTagInvertedWarningLight,
          b.surfaceTagInvertedWarningLight,
          t)!,
      surfaceTagInvertedErrorLight: Color.lerp(
          a.surfaceTagInvertedErrorLight, b.surfaceTagInvertedErrorLight, t)!,
      surfaceTagInvertedDefaultDark: Color.lerp(
          a.surfaceTagInvertedDefaultDark, b.surfaceTagInvertedDefaultDark, t)!,
      strokeAdditionalsTagOutlineDefault600: Color.lerp(
          a.strokeAdditionalsTagOutlineDefault600,
          b.strokeAdditionalsTagOutlineDefault600,
          t)!,
      textTagTagSolidDefault600: Color.lerp(
          a.textTagTagSolidDefault600, b.textTagTagSolidDefault600, t)!,
      surfaceTagInvertedInfoDark: Color.lerp(
          a.surfaceTagInvertedInfoDark, b.surfaceTagInvertedInfoDark, t)!,
      surfaceTagInvertedSuccessDark: Color.lerp(
          a.surfaceTagInvertedSuccessDark, b.surfaceTagInvertedSuccessDark, t)!,
      surfaceTagInvertedWarningDark: Color.lerp(
          a.surfaceTagInvertedWarningDark, b.surfaceTagInvertedWarningDark, t)!,
      surfaceTagInvertedErrorDark: Color.lerp(
          a.surfaceTagInvertedErrorDark, b.surfaceTagInvertedErrorDark, t)!,
      textTagTagInvertedDefaultLight: Color.lerp(
          a.textTagTagInvertedDefaultLight,
          b.textTagTagInvertedDefaultLight,
          t)!,
      textTagTagInvertedDefaultDark: Color.lerp(
          a.textTagTagInvertedDefaultDark, b.textTagTagInvertedDefaultDark, t)!,
      surfaceComponentsCategoryMenuLight: Color.lerp(
          a.surfaceComponentsCategoryMenuLight,
          b.surfaceComponentsCategoryMenuLight,
          t)!,
      surfaceComponentsCategoryMenuDark: Color.lerp(
          a.surfaceComponentsCategoryMenuDark,
          b.surfaceComponentsCategoryMenuDark,
          t)!,
      textComponentsMenuBarText500: Color.lerp(
          a.textComponentsMenuBarText500, b.textComponentsMenuBarText500, t)!,
      surfaceComponentsMenuBarIcon500: Color.lerp(
          a.surfaceComponentsMenuBarIcon500,
          b.surfaceComponentsMenuBarIcon500,
          t)!,
      surfaceComponentsMenuBarSurfaceLight: Color.lerp(
          a.surfaceComponentsMenuBarSurfaceLight,
          b.surfaceComponentsMenuBarSurfaceLight,
          t)!,
      surfaceComponentsMenuBarSurfaceDark: Color.lerp(
          a.surfaceComponentsMenuBarSurfaceDark,
          b.surfaceComponentsMenuBarSurfaceDark,
          t)!,
      strokeLightDarkLight6:
          Color.lerp(a.strokeLightDarkLight6, b.strokeLightDarkLight6, t)!,
      strokeLightDarkDark6:
          Color.lerp(a.strokeLightDarkDark6, b.strokeLightDarkDark6, t)!,
      surfaceLightDarkLight4:
          Color.lerp(a.surfaceLightDarkLight4, b.surfaceLightDarkLight4, t)!,
      surfaceLightDarkDark4:
          Color.lerp(a.surfaceLightDarkDark4, b.surfaceLightDarkDark4, t)!,
      textComponentsTextFormDefault500: Color.lerp(
          a.textComponentsTextFormDefault500,
          b.textComponentsTextFormDefault500,
          t)!,
      surfaceComponentsIconFormDefault500: Color.lerp(
          a.surfaceComponentsIconFormDefault500,
          b.surfaceComponentsIconFormDefault500,
          t)!,
      textComponentsTextFormDisabled600: Color.lerp(
          a.textComponentsTextFormDisabled600,
          b.textComponentsTextFormDisabled600,
          t)!,
      surfaceComponentsIconFormDisabled600: Color.lerp(
          a.surfaceComponentsIconFormDisabled600,
          b.surfaceComponentsIconFormDisabled600,
          t)!,
      strokeInputFormDefaultFilledLight: Color.lerp(
          a.strokeInputFormDefaultFilledLight,
          b.strokeInputFormDefaultFilledLight,
          t)!,
      strokeInputFormReadOnlyLight: Color.lerp(
          a.strokeInputFormReadOnlyLight, b.strokeInputFormReadOnlyLight, t)!,
      strokeInputFormDisabledLight: Color.lerp(
          a.strokeInputFormDisabledLight, b.strokeInputFormDisabledLight, t)!,
      strokeInputFormDefaultFilledDark: Color.lerp(
          a.strokeInputFormDefaultFilledDark,
          b.strokeInputFormDefaultFilledDark,
          t)!,
      strokeInputFormReadOnlyDark: Color.lerp(
          a.strokeInputFormReadOnlyDark, b.strokeInputFormReadOnlyDark, t)!,
      strokeInputFormDisabledDark: Color.lerp(
          a.strokeInputFormDisabledDark, b.strokeInputFormDisabledDark, t)!,
      textInputForm2InputFormDefaultLight: Color.lerp(
          a.textInputForm2InputFormDefaultLight,
          b.textInputForm2InputFormDefaultLight,
          t)!,
      textInputForm2InputFormReadOnlyLight: Color.lerp(
          a.textInputForm2InputFormReadOnlyLight,
          b.textInputForm2InputFormReadOnlyLight,
          t)!,
      textInputForm2InputFormDisabledLight: Color.lerp(
          a.textInputForm2InputFormDisabledLight,
          b.textInputForm2InputFormDisabledLight,
          t)!,
      textInputForm2InputFormDefaultDark: Color.lerp(
          a.textInputForm2InputFormDefaultDark,
          b.textInputForm2InputFormDefaultDark,
          t)!,
      textInputForm2InputFormReadOnlyDark: Color.lerp(
          a.textInputForm2InputFormReadOnlyDark,
          b.textInputForm2InputFormReadOnlyDark,
          t)!,
      textInputForm2InputFormDisabledDark: Color.lerp(
          a.textInputForm2InputFormDisabledDark,
          b.textInputForm2InputFormDisabledDark,
          t)!,
      surfaceInputForm2DefaultLight: Color.lerp(
          a.surfaceInputForm2DefaultLight, b.surfaceInputForm2DefaultLight, t)!,
      surfaceInputForm2ReadOnlyLight: Color.lerp(
          a.surfaceInputForm2ReadOnlyLight,
          b.surfaceInputForm2ReadOnlyLight,
          t)!,
      surfaceInputForm2DefaultDark: Color.lerp(
          a.surfaceInputForm2DefaultDark, b.surfaceInputForm2DefaultDark, t)!,
      surfaceInputForm2ReadOnlyDark: Color.lerp(
          a.surfaceInputForm2ReadOnlyDark, b.surfaceInputForm2ReadOnlyDark, t)!,
      surfaceInputForm2ReadOnlyIconLight: Color.lerp(
          a.surfaceInputForm2ReadOnlyIconLight,
          b.surfaceInputForm2ReadOnlyIconLight,
          t)!,
      surfaceInputForm2ReadOnlyIconDark: Color.lerp(
          a.surfaceInputForm2ReadOnlyIconDark,
          b.surfaceInputForm2ReadOnlyIconDark,
          t)!,
      surfaceInputForm2DisabledIconLight: Color.lerp(
          a.surfaceInputForm2DisabledIconLight,
          b.surfaceInputForm2DisabledIconLight,
          t)!,
      surfaceInputForm2DisabledIconDark: Color.lerp(
          a.surfaceInputForm2DisabledIconDark,
          b.surfaceInputForm2DisabledIconDark,
          t)!,
      strokeLightDarkLight0:
          Color.lerp(a.strokeLightDarkLight0, b.strokeLightDarkLight0, t)!,
      strokeLightDarkDark0:
          Color.lerp(a.strokeLightDarkDark0, b.strokeLightDarkDark0, t)!,
      surfaceOthersRed: Color.lerp(a.surfaceOthersRed, b.surfaceOthersRed, t)!,
      surfaceOthersPink:
          Color.lerp(a.surfaceOthersPink, b.surfaceOthersPink, t)!,
      surfaceOthersPurple:
          Color.lerp(a.surfaceOthersPurple, b.surfaceOthersPurple, t)!,
      surfaceOthersDeepPurple:
          Color.lerp(a.surfaceOthersDeepPurple, b.surfaceOthersDeepPurple, t)!,
      surfaceOthersIndigo:
          Color.lerp(a.surfaceOthersIndigo, b.surfaceOthersIndigo, t)!,
      surfaceOthersBlue:
          Color.lerp(a.surfaceOthersBlue, b.surfaceOthersBlue, t)!,
      surfaceOthersLightBlue:
          Color.lerp(a.surfaceOthersLightBlue, b.surfaceOthersLightBlue, t)!,
      surfaceOthersCyan:
          Color.lerp(a.surfaceOthersCyan, b.surfaceOthersCyan, t)!,
      surfaceOthersTeal:
          Color.lerp(a.surfaceOthersTeal, b.surfaceOthersTeal, t)!,
      surfaceOthersGreen:
          Color.lerp(a.surfaceOthersGreen, b.surfaceOthersGreen, t)!,
      surfaceOthersLightGreen:
          Color.lerp(a.surfaceOthersLightGreen, b.surfaceOthersLightGreen, t)!,
      surfaceOthersLime:
          Color.lerp(a.surfaceOthersLime, b.surfaceOthersLime, t)!,
      surfaceOthersYellow:
          Color.lerp(a.surfaceOthersYellow, b.surfaceOthersYellow, t)!,
      surfaceOthersAmber:
          Color.lerp(a.surfaceOthersAmber, b.surfaceOthersAmber, t)!,
      surfaceOthersOrange:
          Color.lerp(a.surfaceOthersOrange, b.surfaceOthersOrange, t)!,
      surfaceOthersDeepOrange:
          Color.lerp(a.surfaceOthersDeepOrange, b.surfaceOthersDeepOrange, t)!,
      surfaceOthersBrown:
          Color.lerp(a.surfaceOthersBrown, b.surfaceOthersBrown, t)!,
      surfaceOthersBlueGrey:
          Color.lerp(a.surfaceOthersBlueGrey, b.surfaceOthersBlueGrey, t)!,
      strokeAdditionalsSearchFormLight: Color.lerp(
          a.strokeAdditionalsSearchFormLight,
          b.strokeAdditionalsSearchFormLight,
          t)!,
      strokeAdditionalsSearchFormDark: Color.lerp(
          a.strokeAdditionalsSearchFormDark,
          b.strokeAdditionalsSearchFormDark,
          t)!,
    );
  }

  static CRColorThemes light = CRColorThemes(
    textGeneralBrand: CRColorsKey.textGeneralBrand.light,
    textGreyscale900: CRColorsKey.textGreyscale900.light,
    textGreyscale800: CRColorsKey.textGreyscale800.light,
    textGreyscale700: CRColorsKey.textGreyscale700.light,
    textGreyscale600: CRColorsKey.textGreyscale600.light,
    textGreyscale500: CRColorsKey.textGreyscale500.light,
    textGreyscale400: CRColorsKey.textGreyscale400.light,
    textGreyscale300: CRColorsKey.textGreyscale300.light,
    textGreyscale200: CRColorsKey.textGreyscale200.light,
    textGreyscale100: CRColorsKey.textGreyscale100.light,
    textGreyscale50: CRColorsKey.textGreyscale50.light,
    textGeneralWhite: CRColorsKey.textGeneralWhite.light,
    textGeneralBlack: CRColorsKey.textGeneralBlack.light,
    textAlertsStatusSuccess: CRColorsKey.textAlertsStatusSuccess.light,
    textAlertsStatusInfo: CRColorsKey.textAlertsStatusInfo.light,
    textAlertsStatusWarning: CRColorsKey.textAlertsStatusWarning.light,
    textAlertsStatusError: CRColorsKey.textAlertsStatusError.light,
    surfaceGeneralBrand: CRColorsKey.surfaceGeneralBrand.light,
    surfaceGeneralWhite: CRColorsKey.surfaceGeneralWhite.light,
    surfaceGeneralBlack: CRColorsKey.surfaceGeneralBlack.light,
    surfaceAlertsStatusSuccess: CRColorsKey.surfaceAlertsStatusSuccess.light,
    surfaceAlertsStatusInfo: CRColorsKey.surfaceAlertsStatusInfo.light,
    surfaceAlertsStatusWarning: CRColorsKey.surfaceAlertsStatusWarning.light,
    surfaceAlertsStatusError: CRColorsKey.surfaceAlertsStatusError.light,
    surfaceAlertsStatusLightDisabled:
        CRColorsKey.surfaceAlertsStatusLightDisabled.light,
    surfaceAlertsStatusDarkDisabled:
        CRColorsKey.surfaceAlertsStatusDarkDisabled.light,
    surfaceAlertsStatusButtonDisabled:
        CRColorsKey.surfaceAlertsStatusButtonDisabled.light,
    surfaceGreyscale900: CRColorsKey.surfaceGreyscale900.light,
    surfaceGreyscale800: CRColorsKey.surfaceGreyscale800.light,
    surfaceGreyscale700: CRColorsKey.surfaceGreyscale700.light,
    surfaceGreyscale600: CRColorsKey.surfaceGreyscale600.light,
    surfaceGreyscale500: CRColorsKey.surfaceGreyscale500.light,
    surfaceGreyscale400: CRColorsKey.surfaceGreyscale400.light,
    surfaceGreyscale300: CRColorsKey.surfaceGreyscale300.light,
    surfaceGreyscale200: CRColorsKey.surfaceGreyscale200.light,
    surfaceGreyscale100: CRColorsKey.surfaceGreyscale100.light,
    surfaceGreyscale50: CRColorsKey.surfaceGreyscale50.light,
    surfaceLightDarkDark1: CRColorsKey.surfaceLightDarkDark1.light,
    surfaceLightDarkDark2: CRColorsKey.surfaceLightDarkDark2.light,
    surfaceLightDarkDark3: CRColorsKey.surfaceLightDarkDark3.light,
    surfaceLightDarkDark6: CRColorsKey.surfaceLightDarkDark6.light,
    surfaceLightDarkDark7: CRColorsKey.surfaceLightDarkDark7.light,
    surfaceBackgroundBackgroundTeal:
        CRColorsKey.surfaceBackgroundBackgroundTeal.light,
    surfaceBackgroundBackgroundPurple:
        CRColorsKey.surfaceBackgroundBackgroundPurple.light,
    surfaceBackgroundBackgroundRed:
        CRColorsKey.surfaceBackgroundBackgroundRed.light,
    surfaceBackgroundBackgroundBlue:
        CRColorsKey.surfaceBackgroundBackgroundBlue.light,
    surfaceBackgroundBackgroundGreen:
        CRColorsKey.surfaceBackgroundBackgroundGreen.light,
    surfaceBackgroundBackgroundBrown:
        CRColorsKey.surfaceBackgroundBackgroundBrown.light,
    surfaceBackgroundBackgroundYellow:
        CRColorsKey.surfaceBackgroundBackgroundYellow.light,
    surfaceBackgroundBackgroundOrange:
        CRColorsKey.surfaceBackgroundBackgroundOrange.light,
    surfaceTransparentTransparentTeal:
        CRColorsKey.surfaceTransparentTransparentTeal.light,
    surfaceTransparentTransparentPurple:
        CRColorsKey.surfaceTransparentTransparentPurple.light,
    surfaceTransparentTransparentRed:
        CRColorsKey.surfaceTransparentTransparentRed.light,
    surfaceTransparentTransparentBlue:
        CRColorsKey.surfaceTransparentTransparentBlue.light,
    surfaceTransparentTransparentGreen:
        CRColorsKey.surfaceTransparentTransparentGreen.light,
    surfaceTransparentTransparentBrown:
        CRColorsKey.surfaceTransparentTransparentBrown.light,
    surfaceTransparentTransparentYellow:
        CRColorsKey.surfaceTransparentTransparentYellow.light,
    surfaceTransparentTransparentOrange:
        CRColorsKey.surfaceTransparentTransparentOrange.light,
    strokeGeneralBrand: CRColorsKey.strokeGeneralBrand.light,
    strokeGreyscaleGreyscale300: CRColorsKey.strokeGreyscaleGreyscale300.light,
    strokeGreyscaleGreyscale200: CRColorsKey.strokeGreyscaleGreyscale200.light,
    strokeGreyscaleGreyscale100: CRColorsKey.strokeGreyscaleGreyscale100.light,
    strokeGreyscaleGreyscale50: CRColorsKey.strokeGreyscaleGreyscale50.light,
    strokeGeneralWhite: CRColorsKey.strokeGeneralWhite.light,
    strokeGeneralBlack: CRColorsKey.strokeGeneralBlack.light,
    surfaceTransparentTransparentGrey:
        CRColorsKey.surfaceTransparentTransparentGrey.light,
    strokeGreyscaleGreyscale900: CRColorsKey.strokeGreyscaleGreyscale900.light,
    strokeGreyscaleGreyscale800: CRColorsKey.strokeGreyscaleGreyscale800.light,
    strokeGreyscaleGreyscale700: CRColorsKey.strokeGreyscaleGreyscale700.light,
    strokeGreyscaleGreyscale600: CRColorsKey.strokeGreyscaleGreyscale600.light,
    strokeGreyscaleGreyscale500: CRColorsKey.strokeGreyscaleGreyscale500.light,
    strokeGreyscaleGreyscale400: CRColorsKey.strokeGreyscaleGreyscale400.light,
    strokeAlertsStatusLightDisabled:
        CRColorsKey.strokeAlertsStatusLightDisabled.light,
    strokeAlertsStatusDarkDisabled:
        CRColorsKey.strokeAlertsStatusDarkDisabled.light,
    strokeAlertsStatusButtonDisabled:
        CRColorsKey.strokeAlertsStatusButtonDisabled.light,
    strokeAlertsStatusSuccess: CRColorsKey.strokeAlertsStatusSuccess.light,
    strokeAlertsStatusInfo: CRColorsKey.strokeAlertsStatusInfo.light,
    strokeAlertsStatusWarning: CRColorsKey.strokeAlertsStatusWarning.light,
    strokeAlertsStatusError: CRColorsKey.strokeAlertsStatusError.light,
    strokeBorderSingleStrokeBorderLight:
        CRColorsKey.strokeBorderSingleStrokeBorderLight.light,
    strokeBorderFullStrokeLight: CRColorsKey.strokeBorderFullStrokeLight.light,
    strokeBorderSingleStrokeDividerLight:
        CRColorsKey.strokeBorderSingleStrokeDividerLight.light,
    textButtonsBrand: CRColorsKey.textButtonsBrand.light,
    textButtonsWhite: CRColorsKey.textButtonsWhite.light,
    textButtonsGreyscale900: CRColorsKey.textButtonsGreyscale900.light,
    surfaceButtonsBrand: CRColorsKey.surfaceButtonsBrand.light,
    surfaceButtonsButtonLight: CRColorsKey.surfaceButtonsButtonLight.light,
    surfaceButtonsButtonDark: CRColorsKey.surfaceButtonsButtonDark.light,
    surfaceButtonsSocialMediaLight:
        CRColorsKey.surfaceButtonsSocialMediaLight.light,
    surfaceButtonsSocialMediaDark:
        CRColorsKey.surfaceButtonsSocialMediaDark.light,
    surfaceButtonsButtonDisabled:
        CRColorsKey.surfaceButtonsButtonDisabled.light,
    surfaceButtonsButton50: CRColorsKey.surfaceButtonsButton50.light,
    textButtonsSocialMediaLight: CRColorsKey.textButtonsSocialMediaLight.light,
    surfaceButtonsGreyscaleIcon900:
        CRColorsKey.surfaceButtonsGreyscaleIcon900.light,
    surfaceButtonsWhiteIcon: CRColorsKey.surfaceButtonsWhiteIcon.light,
    textButtonsBrandLight: CRColorsKey.textButtonsBrandLight.light,
    textButtonsWhiteDark: CRColorsKey.textButtonsWhiteDark.light,
    textButtonsSocialMediaDark: CRColorsKey.textButtonsSocialMediaDark.light,
    surfaceButtonsBrandLight: CRColorsKey.surfaceButtonsBrandLight.light,
    surfaceButtonsWhiteDark: CRColorsKey.surfaceButtonsWhiteDark.light,
    strokeBorderSingleStrokeBorderDark:
        CRColorsKey.strokeBorderSingleStrokeBorderDark.light,
    strokeBorderSingleStrokeDividerDark:
        CRColorsKey.strokeBorderSingleStrokeDividerDark.light,
    strokeBorderFullStrokeDark: CRColorsKey.strokeBorderFullStrokeDark.light,
    surfaceComponentsDropdownLight:
        CRColorsKey.surfaceComponentsDropdownLight.light,
    surfaceComponentsDropdownDark:
        CRColorsKey.surfaceComponentsDropdownDark.light,
    surfaceComponentsModalLight: CRColorsKey.surfaceComponentsModalLight.light,
    surfaceComponentsModalDark: CRColorsKey.surfaceComponentsModalDark.light,
    surfaceComponentsButtomBarActionLight:
        CRColorsKey.surfaceComponentsButtomBarActionLight.light,
    surfaceComponentsButtomBarActionDark:
        CRColorsKey.surfaceComponentsButtomBarActionDark.light,
    surfaceComponentsGeneralFrameLight:
        CRColorsKey.surfaceComponentsGeneralFrameLight.light,
    surfaceComponentsGeneralFrameDark:
        CRColorsKey.surfaceComponentsGeneralFrameDark.light,
    surfaceAdditionalsOverColorFrameLight:
        CRColorsKey.surfaceAdditionalsOverColorFrameLight.light,
    surfaceComponentsDropdownIconLight:
        CRColorsKey.surfaceComponentsDropdownIconLight.light,
    surfaceComponentsDropdownIconDark:
        CRColorsKey.surfaceComponentsDropdownIconDark.light,
    surfaceLightDarkLight2: CRColorsKey.surfaceLightDarkLight2.light,
    surfaceLightDarkLight3: CRColorsKey.surfaceLightDarkLight3.light,
    surfaceLightDarkLight6: CRColorsKey.surfaceLightDarkLight6.light,
    surfaceLightDarkLight7: CRColorsKey.surfaceLightDarkLight7.light,
    surfaceLightDarkLight1: CRColorsKey.surfaceLightDarkLight1.light,
    surfaceAdditionalsOverColorFrameDark:
        CRColorsKey.surfaceAdditionalsOverColorFrameDark.light,
    textGeneralTextLight: CRColorsKey.textGeneralTextLight.light,
    textGeneralTextDark: CRColorsKey.textGeneralTextDark.light,
    surfaceGeneralSurfaceLight: CRColorsKey.surfaceGeneralSurfaceLight.light,
    surfaceGeneralSurfaceDark: CRColorsKey.surfaceGeneralSurfaceDark.light,
    surfaceLightDarkLight8: CRColorsKey.surfaceLightDarkLight8.light,
    surfaceLightDarkDark8: CRColorsKey.surfaceLightDarkDark8.light,
    strokeAdditionalsToggle400: CRColorsKey.strokeAdditionalsToggle400.light,
    surfaceLightDarkLight5: CRColorsKey.surfaceLightDarkLight5.light,
    surfaceLightDarkDark5: CRColorsKey.surfaceLightDarkDark5.light,
    surfaceComponentsSearchSurfaceLight:
        CRColorsKey.surfaceComponentsSearchSurfaceLight.light,
    surfaceComponentsSearchSurfaceDark:
        CRColorsKey.surfaceComponentsSearchSurfaceDark.light,
    textComponentsSearchTextLight:
        CRColorsKey.textComponentsSearchTextLight.light,
    textComponentsSearchTextDark:
        CRColorsKey.textComponentsSearchTextDark.light,
    textComponentsTextFilled: CRColorsKey.textComponentsTextFilled.light,
    surfaceComponentsSurfaceFilled:
        CRColorsKey.surfaceComponentsSurfaceFilled.light,
    strokeLightDarkLight1: CRColorsKey.strokeLightDarkLight1.light,
    strokeLightDarkLight2: CRColorsKey.strokeLightDarkLight2.light,
    strokeLightDarkLight3: CRColorsKey.strokeLightDarkLight3.light,
    strokeLightDarkLight5: CRColorsKey.strokeLightDarkLight5.light,
    strokeLightDarkLight4: CRColorsKey.strokeLightDarkLight4.light,
    strokeLightDarkLight7: CRColorsKey.strokeLightDarkLight7.light,
    strokeLightDarkLight8: CRColorsKey.strokeLightDarkLight8.light,
    strokeLightDarkDark1: CRColorsKey.strokeLightDarkDark1.light,
    strokeLightDarkDark2: CRColorsKey.strokeLightDarkDark2.light,
    strokeLightDarkDark3: CRColorsKey.strokeLightDarkDark3.light,
    strokeLightDarkDark5: CRColorsKey.strokeLightDarkDark5.light,
    strokeLightDarkDark4: CRColorsKey.strokeLightDarkDark4.light,
    strokeLightDarkDark7: CRColorsKey.strokeLightDarkDark7.light,
    strokeLightDarkDark8: CRColorsKey.strokeLightDarkDark8.light,
    surfaceBackgroundBackgroundGrey:
        CRColorsKey.surfaceBackgroundBackgroundGrey.light,
    surfaceTagSolidDefaultGrey600:
        CRColorsKey.surfaceTagSolidDefaultGrey600.light,
    surfaceTagInvertedDefaultLight:
        CRColorsKey.surfaceTagInvertedDefaultLight.light,
    surfaceTagInvertedInfoLight: CRColorsKey.surfaceTagInvertedInfoLight.light,
    surfaceTagInvertedSuccessLight:
        CRColorsKey.surfaceTagInvertedSuccessLight.light,
    surfaceTagInvertedWarningLight:
        CRColorsKey.surfaceTagInvertedWarningLight.light,
    surfaceTagInvertedErrorLight:
        CRColorsKey.surfaceTagInvertedErrorLight.light,
    surfaceTagInvertedDefaultDark:
        CRColorsKey.surfaceTagInvertedDefaultDark.light,
    strokeAdditionalsTagOutlineDefault600:
        CRColorsKey.strokeAdditionalsTagOutlineDefault600.light,
    textTagTagSolidDefault600: CRColorsKey.textTagTagSolidDefault600.light,
    surfaceTagInvertedInfoDark: CRColorsKey.surfaceTagInvertedInfoDark.light,
    surfaceTagInvertedSuccessDark:
        CRColorsKey.surfaceTagInvertedSuccessDark.light,
    surfaceTagInvertedWarningDark:
        CRColorsKey.surfaceTagInvertedWarningDark.light,
    surfaceTagInvertedErrorDark: CRColorsKey.surfaceTagInvertedErrorDark.light,
    textTagTagInvertedDefaultLight:
        CRColorsKey.textTagTagInvertedDefaultLight.light,
    textTagTagInvertedDefaultDark:
        CRColorsKey.textTagTagInvertedDefaultDark.light,
    surfaceComponentsCategoryMenuLight:
        CRColorsKey.surfaceComponentsCategoryMenuLight.light,
    surfaceComponentsCategoryMenuDark:
        CRColorsKey.surfaceComponentsCategoryMenuDark.light,
    textComponentsMenuBarText500:
        CRColorsKey.textComponentsMenuBarText500.light,
    surfaceComponentsMenuBarIcon500:
        CRColorsKey.surfaceComponentsMenuBarIcon500.light,
    surfaceComponentsMenuBarSurfaceLight:
        CRColorsKey.surfaceComponentsMenuBarSurfaceLight.light,
    surfaceComponentsMenuBarSurfaceDark:
        CRColorsKey.surfaceComponentsMenuBarSurfaceDark.light,
    strokeLightDarkLight6: CRColorsKey.strokeLightDarkLight6.light,
    strokeLightDarkDark6: CRColorsKey.strokeLightDarkDark6.light,
    surfaceLightDarkLight4: CRColorsKey.surfaceLightDarkLight4.light,
    surfaceLightDarkDark4: CRColorsKey.surfaceLightDarkDark4.light,
    textComponentsTextFormDefault500:
        CRColorsKey.textComponentsTextFormDefault500.light,
    surfaceComponentsIconFormDefault500:
        CRColorsKey.surfaceComponentsIconFormDefault500.light,
    textComponentsTextFormDisabled600:
        CRColorsKey.textComponentsTextFormDisabled600.light,
    surfaceComponentsIconFormDisabled600:
        CRColorsKey.surfaceComponentsIconFormDisabled600.light,
    strokeInputFormDefaultFilledLight:
        CRColorsKey.strokeInputFormDefaultFilledLight.light,
    strokeInputFormReadOnlyLight:
        CRColorsKey.strokeInputFormReadOnlyLight.light,
    strokeInputFormDisabledLight:
        CRColorsKey.strokeInputFormDisabledLight.light,
    strokeInputFormDefaultFilledDark:
        CRColorsKey.strokeInputFormDefaultFilledDark.light,
    strokeInputFormReadOnlyDark: CRColorsKey.strokeInputFormReadOnlyDark.light,
    strokeInputFormDisabledDark: CRColorsKey.strokeInputFormDisabledDark.light,
    textInputForm2InputFormDefaultLight:
        CRColorsKey.textInputForm2InputFormDefaultLight.light,
    textInputForm2InputFormReadOnlyLight:
        CRColorsKey.textInputForm2InputFormReadOnlyLight.light,
    textInputForm2InputFormDisabledLight:
        CRColorsKey.textInputForm2InputFormDisabledLight.light,
    textInputForm2InputFormDefaultDark:
        CRColorsKey.textInputForm2InputFormDefaultDark.light,
    textInputForm2InputFormReadOnlyDark:
        CRColorsKey.textInputForm2InputFormReadOnlyDark.light,
    textInputForm2InputFormDisabledDark:
        CRColorsKey.textInputForm2InputFormDisabledDark.light,
    surfaceInputForm2DefaultLight:
        CRColorsKey.surfaceInputForm2DefaultLight.light,
    surfaceInputForm2ReadOnlyLight:
        CRColorsKey.surfaceInputForm2ReadOnlyLight.light,
    surfaceInputForm2DefaultDark:
        CRColorsKey.surfaceInputForm2DefaultDark.light,
    surfaceInputForm2ReadOnlyDark:
        CRColorsKey.surfaceInputForm2ReadOnlyDark.light,
    surfaceInputForm2ReadOnlyIconLight:
        CRColorsKey.surfaceInputForm2ReadOnlyIconLight.light,
    surfaceInputForm2ReadOnlyIconDark:
        CRColorsKey.surfaceInputForm2ReadOnlyIconDark.light,
    surfaceInputForm2DisabledIconLight:
        CRColorsKey.surfaceInputForm2DisabledIconLight.light,
    surfaceInputForm2DisabledIconDark:
        CRColorsKey.surfaceInputForm2DisabledIconDark.light,
    strokeLightDarkLight0: CRColorsKey.strokeLightDarkLight0.light,
    strokeLightDarkDark0: CRColorsKey.strokeLightDarkDark0.light,
    surfaceOthersRed: CRColorsKey.surfaceOthersRed.light,
    surfaceOthersPink: CRColorsKey.surfaceOthersPink.light,
    surfaceOthersPurple: CRColorsKey.surfaceOthersPurple.light,
    surfaceOthersDeepPurple: CRColorsKey.surfaceOthersDeepPurple.light,
    surfaceOthersIndigo: CRColorsKey.surfaceOthersIndigo.light,
    surfaceOthersBlue: CRColorsKey.surfaceOthersBlue.light,
    surfaceOthersLightBlue: CRColorsKey.surfaceOthersLightBlue.light,
    surfaceOthersCyan: CRColorsKey.surfaceOthersCyan.light,
    surfaceOthersTeal: CRColorsKey.surfaceOthersTeal.light,
    surfaceOthersGreen: CRColorsKey.surfaceOthersGreen.light,
    surfaceOthersLightGreen: CRColorsKey.surfaceOthersLightGreen.light,
    surfaceOthersLime: CRColorsKey.surfaceOthersLime.light,
    surfaceOthersYellow: CRColorsKey.surfaceOthersYellow.light,
    surfaceOthersAmber: CRColorsKey.surfaceOthersAmber.light,
    surfaceOthersOrange: CRColorsKey.surfaceOthersOrange.light,
    surfaceOthersDeepOrange: CRColorsKey.surfaceOthersDeepOrange.light,
    surfaceOthersBrown: CRColorsKey.surfaceOthersBrown.light,
    surfaceOthersBlueGrey: CRColorsKey.surfaceOthersBlueGrey.light,
    strokeAdditionalsSearchFormLight:
        CRColorsKey.strokeAdditionalsSearchFormLight.light,
    strokeAdditionalsSearchFormDark:
        CRColorsKey.strokeAdditionalsSearchFormDark.light,
  );

  static CRColorThemes dark = CRColorThemes(
    textGeneralBrand: CRColorsKey.textGeneralBrand.dark,
    textGreyscale900: CRColorsKey.textGreyscale900.dark,
    textGreyscale800: CRColorsKey.textGreyscale800.dark,
    textGreyscale700: CRColorsKey.textGreyscale700.dark,
    textGreyscale600: CRColorsKey.textGreyscale600.dark,
    textGreyscale500: CRColorsKey.textGreyscale500.dark,
    textGreyscale400: CRColorsKey.textGreyscale400.dark,
    textGreyscale300: CRColorsKey.textGreyscale300.dark,
    textGreyscale200: CRColorsKey.textGreyscale200.dark,
    textGreyscale100: CRColorsKey.textGreyscale100.dark,
    textGreyscale50: CRColorsKey.textGreyscale50.dark,
    textGeneralWhite: CRColorsKey.textGeneralWhite.dark,
    textGeneralBlack: CRColorsKey.textGeneralBlack.dark,
    textAlertsStatusSuccess: CRColorsKey.textAlertsStatusSuccess.dark,
    textAlertsStatusInfo: CRColorsKey.textAlertsStatusInfo.dark,
    textAlertsStatusWarning: CRColorsKey.textAlertsStatusWarning.dark,
    textAlertsStatusError: CRColorsKey.textAlertsStatusError.dark,
    surfaceGeneralBrand: CRColorsKey.surfaceGeneralBrand.dark,
    surfaceGeneralWhite: CRColorsKey.surfaceGeneralWhite.dark,
    surfaceGeneralBlack: CRColorsKey.surfaceGeneralBlack.dark,
    surfaceAlertsStatusSuccess: CRColorsKey.surfaceAlertsStatusSuccess.dark,
    surfaceAlertsStatusInfo: CRColorsKey.surfaceAlertsStatusInfo.dark,
    surfaceAlertsStatusWarning: CRColorsKey.surfaceAlertsStatusWarning.dark,
    surfaceAlertsStatusError: CRColorsKey.surfaceAlertsStatusError.dark,
    surfaceAlertsStatusLightDisabled:
        CRColorsKey.surfaceAlertsStatusLightDisabled.dark,
    surfaceAlertsStatusDarkDisabled:
        CRColorsKey.surfaceAlertsStatusDarkDisabled.dark,
    surfaceAlertsStatusButtonDisabled:
        CRColorsKey.surfaceAlertsStatusButtonDisabled.dark,
    surfaceGreyscale900: CRColorsKey.surfaceGreyscale900.dark,
    surfaceGreyscale800: CRColorsKey.surfaceGreyscale800.dark,
    surfaceGreyscale700: CRColorsKey.surfaceGreyscale700.dark,
    surfaceGreyscale600: CRColorsKey.surfaceGreyscale600.dark,
    surfaceGreyscale500: CRColorsKey.surfaceGreyscale500.dark,
    surfaceGreyscale400: CRColorsKey.surfaceGreyscale400.dark,
    surfaceGreyscale300: CRColorsKey.surfaceGreyscale300.dark,
    surfaceGreyscale200: CRColorsKey.surfaceGreyscale200.dark,
    surfaceGreyscale100: CRColorsKey.surfaceGreyscale100.dark,
    surfaceGreyscale50: CRColorsKey.surfaceGreyscale50.dark,
    surfaceLightDarkDark1: CRColorsKey.surfaceLightDarkDark1.dark,
    surfaceLightDarkDark2: CRColorsKey.surfaceLightDarkDark2.dark,
    surfaceLightDarkDark3: CRColorsKey.surfaceLightDarkDark3.dark,
    surfaceLightDarkDark6: CRColorsKey.surfaceLightDarkDark6.dark,
    surfaceLightDarkDark7: CRColorsKey.surfaceLightDarkDark7.dark,
    surfaceBackgroundBackgroundTeal:
        CRColorsKey.surfaceBackgroundBackgroundTeal.dark,
    surfaceBackgroundBackgroundPurple:
        CRColorsKey.surfaceBackgroundBackgroundPurple.dark,
    surfaceBackgroundBackgroundRed:
        CRColorsKey.surfaceBackgroundBackgroundRed.dark,
    surfaceBackgroundBackgroundBlue:
        CRColorsKey.surfaceBackgroundBackgroundBlue.dark,
    surfaceBackgroundBackgroundGreen:
        CRColorsKey.surfaceBackgroundBackgroundGreen.dark,
    surfaceBackgroundBackgroundBrown:
        CRColorsKey.surfaceBackgroundBackgroundBrown.dark,
    surfaceBackgroundBackgroundYellow:
        CRColorsKey.surfaceBackgroundBackgroundYellow.dark,
    surfaceBackgroundBackgroundOrange:
        CRColorsKey.surfaceBackgroundBackgroundOrange.dark,
    surfaceTransparentTransparentTeal:
        CRColorsKey.surfaceTransparentTransparentTeal.dark,
    surfaceTransparentTransparentPurple:
        CRColorsKey.surfaceTransparentTransparentPurple.dark,
    surfaceTransparentTransparentRed:
        CRColorsKey.surfaceTransparentTransparentRed.dark,
    surfaceTransparentTransparentBlue:
        CRColorsKey.surfaceTransparentTransparentBlue.dark,
    surfaceTransparentTransparentGreen:
        CRColorsKey.surfaceTransparentTransparentGreen.dark,
    surfaceTransparentTransparentBrown:
        CRColorsKey.surfaceTransparentTransparentBrown.dark,
    surfaceTransparentTransparentYellow:
        CRColorsKey.surfaceTransparentTransparentYellow.dark,
    surfaceTransparentTransparentOrange:
        CRColorsKey.surfaceTransparentTransparentOrange.dark,
    strokeGeneralBrand: CRColorsKey.strokeGeneralBrand.dark,
    strokeGreyscaleGreyscale300: CRColorsKey.strokeGreyscaleGreyscale300.dark,
    strokeGreyscaleGreyscale200: CRColorsKey.strokeGreyscaleGreyscale200.dark,
    strokeGreyscaleGreyscale100: CRColorsKey.strokeGreyscaleGreyscale100.dark,
    strokeGreyscaleGreyscale50: CRColorsKey.strokeGreyscaleGreyscale50.dark,
    strokeGeneralWhite: CRColorsKey.strokeGeneralWhite.dark,
    strokeGeneralBlack: CRColorsKey.strokeGeneralBlack.dark,
    surfaceTransparentTransparentGrey:
        CRColorsKey.surfaceTransparentTransparentGrey.dark,
    strokeGreyscaleGreyscale900: CRColorsKey.strokeGreyscaleGreyscale900.dark,
    strokeGreyscaleGreyscale800: CRColorsKey.strokeGreyscaleGreyscale800.dark,
    strokeGreyscaleGreyscale700: CRColorsKey.strokeGreyscaleGreyscale700.dark,
    strokeGreyscaleGreyscale600: CRColorsKey.strokeGreyscaleGreyscale600.dark,
    strokeGreyscaleGreyscale500: CRColorsKey.strokeGreyscaleGreyscale500.dark,
    strokeGreyscaleGreyscale400: CRColorsKey.strokeGreyscaleGreyscale400.dark,
    strokeAlertsStatusLightDisabled:
        CRColorsKey.strokeAlertsStatusLightDisabled.dark,
    strokeAlertsStatusDarkDisabled:
        CRColorsKey.strokeAlertsStatusDarkDisabled.dark,
    strokeAlertsStatusButtonDisabled:
        CRColorsKey.strokeAlertsStatusButtonDisabled.dark,
    strokeAlertsStatusSuccess: CRColorsKey.strokeAlertsStatusSuccess.dark,
    strokeAlertsStatusInfo: CRColorsKey.strokeAlertsStatusInfo.dark,
    strokeAlertsStatusWarning: CRColorsKey.strokeAlertsStatusWarning.dark,
    strokeAlertsStatusError: CRColorsKey.strokeAlertsStatusError.dark,
    strokeBorderSingleStrokeBorderLight:
        CRColorsKey.strokeBorderSingleStrokeBorderLight.dark,
    strokeBorderFullStrokeLight: CRColorsKey.strokeBorderFullStrokeLight.dark,
    strokeBorderSingleStrokeDividerLight:
        CRColorsKey.strokeBorderSingleStrokeDividerLight.dark,
    textButtonsBrand: CRColorsKey.textButtonsBrand.dark,
    textButtonsWhite: CRColorsKey.textButtonsWhite.dark,
    textButtonsGreyscale900: CRColorsKey.textButtonsGreyscale900.dark,
    surfaceButtonsBrand: CRColorsKey.surfaceButtonsBrand.dark,
    surfaceButtonsButtonLight: CRColorsKey.surfaceButtonsButtonLight.dark,
    surfaceButtonsButtonDark: CRColorsKey.surfaceButtonsButtonDark.dark,
    surfaceButtonsSocialMediaLight:
        CRColorsKey.surfaceButtonsSocialMediaLight.dark,
    surfaceButtonsSocialMediaDark:
        CRColorsKey.surfaceButtonsSocialMediaDark.dark,
    surfaceButtonsButtonDisabled: CRColorsKey.surfaceButtonsButtonDisabled.dark,
    surfaceButtonsButton50: CRColorsKey.surfaceButtonsButton50.dark,
    textButtonsSocialMediaLight: CRColorsKey.textButtonsSocialMediaLight.dark,
    surfaceButtonsGreyscaleIcon900:
        CRColorsKey.surfaceButtonsGreyscaleIcon900.dark,
    surfaceButtonsWhiteIcon: CRColorsKey.surfaceButtonsWhiteIcon.dark,
    textButtonsBrandLight: CRColorsKey.textButtonsBrandLight.dark,
    textButtonsWhiteDark: CRColorsKey.textButtonsWhiteDark.dark,
    textButtonsSocialMediaDark: CRColorsKey.textButtonsSocialMediaDark.dark,
    surfaceButtonsBrandLight: CRColorsKey.surfaceButtonsBrandLight.dark,
    surfaceButtonsWhiteDark: CRColorsKey.surfaceButtonsWhiteDark.dark,
    strokeBorderSingleStrokeBorderDark:
        CRColorsKey.strokeBorderSingleStrokeBorderDark.dark,
    strokeBorderSingleStrokeDividerDark:
        CRColorsKey.strokeBorderSingleStrokeDividerDark.dark,
    strokeBorderFullStrokeDark: CRColorsKey.strokeBorderFullStrokeDark.dark,
    surfaceComponentsDropdownLight:
        CRColorsKey.surfaceComponentsDropdownLight.dark,
    surfaceComponentsDropdownDark:
        CRColorsKey.surfaceComponentsDropdownDark.dark,
    surfaceComponentsModalLight: CRColorsKey.surfaceComponentsModalLight.dark,
    surfaceComponentsModalDark: CRColorsKey.surfaceComponentsModalDark.dark,
    surfaceComponentsButtomBarActionLight:
        CRColorsKey.surfaceComponentsButtomBarActionLight.dark,
    surfaceComponentsButtomBarActionDark:
        CRColorsKey.surfaceComponentsButtomBarActionDark.dark,
    surfaceComponentsGeneralFrameLight:
        CRColorsKey.surfaceComponentsGeneralFrameLight.dark,
    surfaceComponentsGeneralFrameDark:
        CRColorsKey.surfaceComponentsGeneralFrameDark.dark,
    surfaceAdditionalsOverColorFrameLight:
        CRColorsKey.surfaceAdditionalsOverColorFrameLight.dark,
    surfaceComponentsDropdownIconLight:
        CRColorsKey.surfaceComponentsDropdownIconLight.dark,
    surfaceComponentsDropdownIconDark:
        CRColorsKey.surfaceComponentsDropdownIconDark.dark,
    surfaceLightDarkLight2: CRColorsKey.surfaceLightDarkLight2.dark,
    surfaceLightDarkLight3: CRColorsKey.surfaceLightDarkLight3.dark,
    surfaceLightDarkLight6: CRColorsKey.surfaceLightDarkLight6.dark,
    surfaceLightDarkLight7: CRColorsKey.surfaceLightDarkLight7.dark,
    surfaceLightDarkLight1: CRColorsKey.surfaceLightDarkLight1.dark,
    surfaceAdditionalsOverColorFrameDark:
        CRColorsKey.surfaceAdditionalsOverColorFrameDark.dark,
    textGeneralTextLight: CRColorsKey.textGeneralTextLight.dark,
    textGeneralTextDark: CRColorsKey.textGeneralTextDark.dark,
    surfaceGeneralSurfaceLight: CRColorsKey.surfaceGeneralSurfaceLight.dark,
    surfaceGeneralSurfaceDark: CRColorsKey.surfaceGeneralSurfaceDark.dark,
    surfaceLightDarkLight8: CRColorsKey.surfaceLightDarkLight8.dark,
    surfaceLightDarkDark8: CRColorsKey.surfaceLightDarkDark8.dark,
    strokeAdditionalsToggle400: CRColorsKey.strokeAdditionalsToggle400.dark,
    surfaceLightDarkLight5: CRColorsKey.surfaceLightDarkLight5.dark,
    surfaceLightDarkDark5: CRColorsKey.surfaceLightDarkDark5.dark,
    surfaceComponentsSearchSurfaceLight:
        CRColorsKey.surfaceComponentsSearchSurfaceLight.dark,
    surfaceComponentsSearchSurfaceDark:
        CRColorsKey.surfaceComponentsSearchSurfaceDark.dark,
    textComponentsSearchTextLight:
        CRColorsKey.textComponentsSearchTextLight.dark,
    textComponentsSearchTextDark: CRColorsKey.textComponentsSearchTextDark.dark,
    textComponentsTextFilled: CRColorsKey.textComponentsTextFilled.dark,
    surfaceComponentsSurfaceFilled:
        CRColorsKey.surfaceComponentsSurfaceFilled.dark,
    strokeLightDarkLight1: CRColorsKey.strokeLightDarkLight1.dark,
    strokeLightDarkLight2: CRColorsKey.strokeLightDarkLight2.dark,
    strokeLightDarkLight3: CRColorsKey.strokeLightDarkLight3.dark,
    strokeLightDarkLight5: CRColorsKey.strokeLightDarkLight5.dark,
    strokeLightDarkLight4: CRColorsKey.strokeLightDarkLight4.dark,
    strokeLightDarkLight7: CRColorsKey.strokeLightDarkLight7.dark,
    strokeLightDarkLight8: CRColorsKey.strokeLightDarkLight8.dark,
    strokeLightDarkDark1: CRColorsKey.strokeLightDarkDark1.dark,
    strokeLightDarkDark2: CRColorsKey.strokeLightDarkDark2.dark,
    strokeLightDarkDark3: CRColorsKey.strokeLightDarkDark3.dark,
    strokeLightDarkDark5: CRColorsKey.strokeLightDarkDark5.dark,
    strokeLightDarkDark4: CRColorsKey.strokeLightDarkDark4.dark,
    strokeLightDarkDark7: CRColorsKey.strokeLightDarkDark7.dark,
    strokeLightDarkDark8: CRColorsKey.strokeLightDarkDark8.dark,
    surfaceBackgroundBackgroundGrey: Color(0xfff6f6f6),
    surfaceTagSolidDefaultGrey600: Color(0xff757575),
    surfaceTagInvertedDefaultLight: Color(0xff35383f),
    surfaceTagInvertedInfoLight: Color(0xff35383f),
    surfaceTagInvertedSuccessLight: Color(0xff35383f),
    surfaceTagInvertedWarningLight: Color(0xff35383f),
    surfaceTagInvertedErrorLight: Color(0xff35383f),
    surfaceTagInvertedDefaultDark: Color(0xfff6f6f6),
    strokeAdditionalsTagOutlineDefault600: Color(0xff757575),
    textTagTagSolidDefault600: Color(0xff757575),
    surfaceTagInvertedInfoDark: Color(0xfff0fbfa),
    surfaceTagInvertedSuccessDark: Color(0xffedfbf7),
    surfaceTagInvertedWarningDark: Color(0xfffffceb),
    surfaceTagInvertedErrorDark: Color(0xfffff3f3),
    textTagTagInvertedDefaultLight: Color(0xffe0e0e0),
    textTagTagInvertedDefaultDark: Color(0xff757575),
    surfaceComponentsCategoryMenuLight: Color(0xff35383f),
    surfaceComponentsCategoryMenuDark: Color(0xfff0fbfa),
    textComponentsMenuBarText500: Color(0xff9e9e9e),
    surfaceComponentsMenuBarIcon500: Color(0xff9e9e9e),
    surfaceComponentsMenuBarSurfaceLight: Color(0x181a20d8),
    surfaceComponentsMenuBarSurfaceDark: Color(0xffffffff),
    strokeLightDarkLight6: Color(0xff35383f),
    strokeLightDarkDark6: Color(0xfff5f5f5),
    surfaceLightDarkLight4: Color(0xff1e2025),
    surfaceLightDarkDark4: Color(0xfff5f5f5),
    textComponentsTextFormDefault500: Color(0xff9e9e9e),
    surfaceComponentsIconFormDefault500: Color(0xff9e9e9e),
    textComponentsTextFormDisabled600: Color(0xff757575),
    surfaceComponentsIconFormDisabled600: Color(0xff757575),
    strokeInputFormDefaultFilledLight: Color(0xff1f222a),
    strokeInputFormReadOnlyLight: Color(0xff1e2025),
    strokeInputFormDisabledLight: Color(0xff23252b),
    strokeInputFormDefaultFilledDark: Color(0xfffafafa),
    strokeInputFormReadOnlyDark: Color(0xfff5f5f5),
    strokeInputFormDisabledDark: Color(0xffd8d8d8),
    textInputForm2InputFormDefaultLight: Color(0xff616161),
    textInputForm2InputFormReadOnlyLight: Color(0xff9e9e9e),
    textInputForm2InputFormDisabledLight: Color(0xff616161),
    textInputForm2InputFormDefaultDark: Color(0xffbdbdbd),
    textInputForm2InputFormReadOnlyDark: Color(0xff616161),
    textInputForm2InputFormDisabledDark: Color(0xff9e9e9e),
    surfaceInputForm2DefaultLight: Color(0xff424242),
    surfaceInputForm2ReadOnlyLight: Color(0xff35383f),
    surfaceInputForm2DefaultDark: Color(0xff9e9e9e),
    surfaceInputForm2ReadOnlyDark: Color(0xff9e9e9e),
    surfaceInputForm2ReadOnlyIconLight: Color(0xff9e9e9e),
    surfaceInputForm2ReadOnlyIconDark: Color(0xff616161),
    surfaceInputForm2DisabledIconLight: Color(0xff616161),
    surfaceInputForm2DisabledIconDark: Color(0xff9e9e9e),
    strokeLightDarkLight0: Color(0xff181a20),
    strokeLightDarkDark0: Color(0xffffffff),
    surfaceOthersRed: Color(0xfff54336),
    surfaceOthersPink: Color(0xffea1e61),
    surfaceOthersPurple: Color(0xff9d28ac),
    surfaceOthersDeepPurple: Color(0xff673ab3),
    surfaceOthersIndigo: Color(0xff3f51b2),
    surfaceOthersBlue: Color(0xff1a96f0),
    surfaceOthersLightBlue: Color(0xff00a9f1),
    surfaceOthersCyan: Color(0xff00bcd3),
    surfaceOthersTeal: Color(0xff009689),
    surfaceOthersGreen: Color(0xff4aaf57),
    surfaceOthersLightGreen: Color(0xff8bc255),
    surfaceOthersLime: Color(0xffcddc4c),
    surfaceOthersYellow: Color(0xffffeb4f),
    surfaceOthersAmber: Color(0xffffc02d),
    surfaceOthersOrange: Color(0xffff981f),
    surfaceOthersDeepOrange: Color(0xffff5726),
    surfaceOthersBrown: Color(0xff7a5548),
    surfaceOthersBlueGrey: Color(0xff607d8a),
    strokeAdditionalsSearchFormLight: Color(0xff181a20),
    strokeAdditionalsSearchFormDark: Color(0xffffffff),
  );
}
