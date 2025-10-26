import 'package:flutter/material.dart';

/// Enum untuk style FAB
enum CRButtonFabStyle {
  fill,
  outline,
}

/// Compose class untuk Floating Action Button dengan berbagai style
class CRButtonFabCompose extends StatelessWidget {
  /// Callback ketika button ditekan
  final VoidCallback? onPressed;

  /// Icon yang ditampilkan
  final IconData icon;

  /// Style FAB (fill atau outline)
  final CRButtonFabStyle style;

  /// Warna background (untuk fill) atau border (untuk outline)
  final Color? color;

  /// Warna icon
  final Color? iconColor;

  /// Ukuran icon
  final double iconSize;

  /// Ukuran FAB (diameter)
  final double size;

  /// Lebar border (untuk outline)
  final double borderWidth;

  /// Elevation
  final double elevation;

  /// Hover elevation
  final double? hoverElevation;

  /// Focus elevation
  final double? focusElevation;

  /// Highlight elevation
  final double? highlightElevation;

  const CRButtonFabCompose({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.style = CRButtonFabStyle.fill,
    this.color,
    this.iconColor,
    this.iconSize = 24,
    this.size = 56,
    this.borderWidth = 2,
    this.elevation = 0,
    this.hoverElevation,
    this.focusElevation,
    this.highlightElevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default colors
    final Color defaultColor = color ?? const Color(0xFF2D9F8E);
    final Color defaultIconColor = iconColor ??
        (style == CRButtonFabStyle.fill ? Colors.white : defaultColor);

    // Background color based on style
    final Color backgroundColor = style == CRButtonFabStyle.fill
        ? defaultColor
        : Colors.transparent;

    // Border for outline style
    final ShapeBorder shape = CircleBorder(
      side: style == CRButtonFabStyle.outline
          ? BorderSide(
              color: defaultColor,
              width: borderWidth,
            )
          : BorderSide.none,
    );

    return SizedBox(
      width: size,
      height: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        foregroundColor: defaultIconColor,
        elevation: elevation,
        hoverElevation: hoverElevation ?? elevation,
        focusElevation: focusElevation ?? elevation,
        highlightElevation: highlightElevation ?? elevation,
        shape: shape,
        child: Icon(
          icon,
          size: iconSize,
          color: defaultIconColor,
        ),
      ),
    );
  }
}
