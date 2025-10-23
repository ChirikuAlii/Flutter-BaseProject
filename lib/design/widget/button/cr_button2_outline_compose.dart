import 'package:flutter/material.dart';
import 'cr_button2.dart';

/// Compose class untuk CRButton2 dengan style Outlined
/// Preset dengan konfigurasi default untuk button outlined dengan rounded corner penuh
class CRButton2OutlineCompose extends StatelessWidget {
  /// Text yang ditampilkan di button
  final String text;

  /// Callback ketika button ditekan
  final VoidCallback? onPressed;

  /// Icon di sisi kiri (opsional)
  final CRButtonIcon? iconLeft;

  /// Icon di sisi kanan (opsional)
  final CRButtonIcon? iconRight;

  /// Posisi icon (default: centerLeft)
  final CRButtonIconPosition iconPosition;

  /// Lebar button (default: full width)
  final double? width;

  /// Tinggi button (default: 56)
  final double height;

  /// Warna border dan text button (default: teal)
  final Color? borderColor;

  /// Warna text (default: sama dengan borderColor)
  final Color? textColor;

  /// Ukuran text (default: 16)
  final double fontSize;

  /// Font weight (default: w600)
  final FontWeight fontWeight;

  /// Warna icon (default: sama dengan borderColor)
  final Color? iconColor;

  /// Ukuran icon (default: 20)
  final double iconSize;

  /// Spacing antara icon dan text (default: 8)
  final double iconSpacing;

  /// Hover effect (default: brightness)
  final CRButtonHoverEffect hoverEffect;

  /// Border radius (default: 100 untuk fully rounded)
  final double radiusCorner;

  /// Border width (default: 2)
  final double borderWidth;

  /// Padding button
  final EdgeInsetsGeometry? padding;

  /// Konfigurasi state disabled custom
  final CRButtonStateConfig? disabledConfig;

  const CRButton2OutlineCompose({
    Key? key,
    required this.text,
    required this.onPressed,
    this.iconLeft,
    this.iconRight,
    this.iconPosition = CRButtonIconPosition.centerLeft,
    this.width = double.infinity,
    this.height = 56,
    this.borderColor,
    this.textColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.iconColor,
    this.iconSize = 20,
    this.iconSpacing = 8,
    this.hoverEffect = CRButtonHoverEffect.brightness,
    this.radiusCorner = 100,
    this.borderWidth = 2,
    this.padding,
    this.disabledConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default values - put in build method for consistency with compose pattern
    final Color defaultBorderColor = borderColor ?? const Color(0xFF2D9F8E);
    final Color defaultTextColor = textColor ?? defaultBorderColor;
    final Color defaultIconColor = iconColor ?? defaultBorderColor;

    final EdgeInsetsGeometry defaultPadding = padding ??
        const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        );

    final CRButtonStateConfig defaultActiveConfig = CRButtonStateConfig(
      borderColor: defaultBorderColor,
      textStyle: TextStyle(
        color: defaultTextColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      iconColor: defaultIconColor,
    );

    final CRButtonStateConfig defaultDisabledConfig = disabledConfig ??
        CRButtonStateConfig(
          borderColor: Colors.grey.shade300,
          textStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          iconColor: Colors.grey.shade400,
        );

    return CRButton2(
      text: text,
      style: CRButtonStyle.outlined,
      onPressed: onPressed,
      iconLeft: iconLeft,
      iconRight: iconRight,
      iconPosition: iconPosition,
      width: width,
      height: height,
      radiusCorner: radiusCorner,
      borderWidth: borderWidth,
      iconSize: iconSize,
      iconSpacing: iconSpacing,
      hoverEffect: hoverEffect,
      padding: defaultPadding,
      activeConfig: defaultActiveConfig,
      disabledConfig: defaultDisabledConfig,
    );
  }
}
