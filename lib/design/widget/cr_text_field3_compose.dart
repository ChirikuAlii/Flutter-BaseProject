import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/design/colors/colors.dart';
import 'package:flutter_base_project/design/colors/colors2.dart';
import 'package:flutter_base_project/design/themes/cr_themes.dart';
import 'package:flutter_base_project/design/widget/cr_text_field3.dart';

class CRTextField3Compose extends StatelessWidget {
  // Basic properties
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final CRTextFieldHintType hintType;
  final CRTextFieldStyle style;
  final CRTextFieldInputType inputType;

  // State
  final CRTextFieldState currentState;
  final String? message;

  // Configurations per state
  final CRTextFieldStateConfig? noneConfig;
  final CRTextFieldStateConfig? focusConfig;
  final CRTextFieldStateConfig? errorConfig;
  final CRTextFieldStateConfig? successConfig;
  final CRTextFieldStateConfig? disableConfig;

  // Message card configuration
  final CRTextTextFieldMessageCardConfig? messageCardSuccessConfig;
  final CRTextTextFieldMessageCardConfig? messageCardErrorConfig;

  // Default styling values
  final double defaultBorderRadius;
  final Color? defaultFillColor;
  final Color? defaultBorderColor;
  final Color? defaultTextColor;
  final Color? defaultHintColor;
  final Color? defaultLabelColor;
  final double defaultBorderWidth;

  // Margins
  final EdgeInsets margin;

  // Input properties
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;

  // Dropdown properties
  final List<String>? dropdownItems;
  final String? dropdownValue;
  final Function(String?)? onDropdownChanged;

  // Phone number properties
  final String? countryCode;
  final Function(String?)? onCountryCodeChanged;
  final List<String>? countryCodes;

  // Icons
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CRTextField3Compose({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.hintType = CRTextFieldHintType.floatingLabel,
    this.style = CRTextFieldStyle.fill,
    this.inputType = CRTextFieldInputType.text,
    this.currentState = CRTextFieldState.none,
    this.message,
    this.noneConfig,
    this.focusConfig,
    this.errorConfig,
    this.successConfig,
    this.disableConfig,
    this.messageCardSuccessConfig,
    this.messageCardErrorConfig,
    this.defaultBorderRadius = 12.0,
    this.defaultFillColor,
    this.defaultBorderColor,
    this.defaultTextColor,
    this.defaultHintColor,
    this.defaultLabelColor,
    this.defaultBorderWidth = 1.5,
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
    this.keyboardType,
    this.inputFormatters,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.onSubmitted,
    this.focusNode,
    this.dropdownItems,
    this.dropdownValue,
    this.onDropdownChanged,
    this.countryCode,
    this.onCountryCodeChanged,
    this.countryCodes,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    //default value put compose because connect with theme
    final CRThemes theme = Theme.of(context).extension<CRThemes>()!;

    final Color defaultFillColor = this.defaultFillColor ?? CRColors.white;
    final Color defaultBorderColor = this.defaultBorderColor ?? Colors.grey;
    final Color defaultTextColor = this.defaultTextColor ?? Colors.black;
    final Color defaultHintColor = this.defaultHintColor ?? Colors.grey;
    final Color defaultLabelColor = this.defaultLabelColor ?? Colors.black;

    final CRTextTextFieldMessageCardConfig messageCardSuccessConfig =
        this.messageCardSuccessConfig ??
            CRTextTextFieldMessageCardConfig(
              bgColor: theme.surfaceTransparentTransparentGreen,
              iconColor: theme.textAlertsStatusSuccess,
              icon: Icons.check_circle_outline,
              textColor: theme.textAlertsStatusSuccess,
            );

    final CRTextTextFieldMessageCardConfig messageCardErrorConfig =
        this.messageCardErrorConfig ??
            const CRTextTextFieldMessageCardConfig(
              bgColor: CRColors.red2,
              iconColor: CRColors.error,
              icon: Icons.error_outline,
              textColor: CRColors.error,
            );

    final CRTextFieldStateConfig noneConfig = this.noneConfig ??
        CRTextFieldStateConfig(
          borderColor: theme.strokeInputFormDefaultFilledLight,
          textColor: theme.textGeneralTextLight,
          fillColor: theme.surfaceLightDarkLight3,
          hintColor: theme.textComponentsTextFormDefault500,
          labelColor: theme.textGeneralTextLight,
        );
    final CRTextFieldStateConfig focusConfig = this.focusConfig ??
        CRTextFieldStateConfig(
          borderColor: theme.strokeGeneralBrand,
          fillColor: theme.surfaceTransparentTransparentTeal,
          textColor: theme.textGeneralTextLight,
          hintColor: theme.textComponentsTextFormDefault500,
          labelColor: theme.textGeneralTextLight,
        );
    final CRTextFieldStateConfig errorConfig = this.errorConfig ??
        CRTextFieldStateConfig(
          borderColor: theme.strokeAlertsStatusError,
          fillColor: theme.surfaceLightDarkLight3,
          textColor: theme.textGeneralTextLight,
          hintColor: theme.textComponentsTextFormDefault500,
          labelColor: theme.textGeneralTextLight,
        );
    final CRTextFieldStateConfig successConfig = this.successConfig ??
        CRTextFieldStateConfig(
          borderColor: theme.strokeAlertsStatusSuccess,
          fillColor: theme.surfaceLightDarkLight3,
          textColor: theme.textGeneralTextLight,
          hintColor: theme.textComponentsTextFormDefault500,
          labelColor: theme.textGeneralTextLight,
        );
    final CRTextFieldStateConfig disableConfig = this.disableConfig ??
        CRTextFieldStateConfig(
          borderColor: theme.strokeInputFormDisabledLight,
          fillColor: theme.surfaceAlertsStatusLightDisabled,
          textColor: theme.textComponentsTextFormDisabled600,
          hintColor: theme.textComponentsTextFormDefault500,
          labelColor: theme.textGeneralTextLight,
        );

    return CRTextField3(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      hintType: hintType,
      style: style,
      inputType: inputType,
      currentState: currentState,
      message: message,
      noneConfig: noneConfig,
      focusConfig: focusConfig,
      errorConfig: errorConfig,
      successConfig: successConfig,
      disableConfig: disableConfig,
      messageCardSuccessConfig: messageCardSuccessConfig,
      messageCardErrorConfig: messageCardErrorConfig,
      defaultBorderRadius: defaultBorderRadius,
      defaultFillColor: defaultFillColor,
      defaultBorderColor: defaultBorderColor,
      defaultTextColor: defaultTextColor,
      defaultHintColor: defaultHintColor,
      defaultLabelColor: defaultLabelColor,
      defaultBorderWidth: defaultBorderWidth,
      margin: margin,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: enabled,
      readOnly: readOnly,
      onChanged: onChanged,
      onTap: onTap,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      dropdownItems: dropdownItems,
      dropdownValue: dropdownValue,
      onDropdownChanged: onDropdownChanged,
      countryCode: countryCode,
      onCountryCodeChanged: onCountryCodeChanged,
      countryCodes: countryCodes,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }
}
