import 'package:flutter/material.dart';

/// Enum untuk style Chip
enum CRChipStyle {
  fill,
  outline,
  ghost,
}

/// Enum untuk tipe Chip
enum CRChipType {
  /// Chip biasa tanpa icon
  normal,
  
  /// Chip dengan icon di sebelah kiri
  withIcon,
  
  /// Chip dengan tombol close (X) di sebelah kanan
  withClose,
}

/// Compose class untuk Chip dengan berbagai style
class CRChipCompose extends StatelessWidget {
  /// Label text yang ditampilkan
  final String label;

  /// Style chip (fill, outline, atau ghost)
  final CRChipStyle style;

  /// Tipe chip (normal, withIcon, atau withClose)
  final CRChipType type;

  /// Callback ketika chip ditekan
  final VoidCallback? onPressed;

  /// Callback ketika tombol close ditekan (hanya untuk type withClose)
  final VoidCallback? onDeleted;

  /// Icon yang ditampilkan (hanya untuk type withIcon)
  final IconData? icon;

  /// Warna background (untuk fill) atau border/text (untuk outline dan ghost)
  final Color? color;

  /// Warna text
  final Color? textColor;

  /// Warna icon
  final Color? iconColor;

  /// Ukuran text
  final double fontSize;

  /// Font weight
  final FontWeight fontWeight;

  /// Padding horizontal
  final double paddingHorizontal;

  /// Padding vertical
  final double paddingVertical;

  /// Border radius
  final double borderRadius;

  /// Lebar border (untuk outline dan ghost)
  final double borderWidth;

  /// Ukuran icon
  final double iconSize;

  const CRChipCompose({
    Key? key,
    required this.label,
    this.style = CRChipStyle.fill,
    this.type = CRChipType.normal,
    this.onPressed,
    this.onDeleted,
    this.icon,
    this.color,
    this.textColor,
    this.iconColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.paddingHorizontal = 24,
    this.paddingVertical = 12,
    this.borderRadius = 24,
    this.borderWidth = 2,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default colors
    final Color defaultColor = color ?? const Color(0xFF2D9F8E);
    
    // Determine colors based on style
    final Color backgroundColor = _getBackgroundColor(defaultColor);
    final Color labelColor = _getLabelColor(defaultColor);
    final Color chipIconColor = _getIconColor(defaultColor);
    final Color borderColor = _getBorderColor(defaultColor);

    // Build chip based on type
    Widget chip;
    
    if (type == CRChipType.withClose) {
      chip = InputChip(
        label: Text(label),
        onPressed: onPressed,
        onDeleted: onDeleted,
        deleteIcon: const Icon(Icons.close, size: 18),
        deleteIconColor: chipIconColor,
        backgroundColor: backgroundColor,
        side: style == CRChipStyle.fill 
            ? BorderSide.none 
            : BorderSide(color: borderColor, width: borderWidth),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        elevation: 0,
        pressElevation: 0,
      );
    } else if (type == CRChipType.withIcon) {
      chip = ActionChip(
        label: Text(label),
        onPressed: onPressed,
        avatar: Icon(
          icon ?? Icons.star,
          size: iconSize,
          color: chipIconColor,
        ),
        backgroundColor: backgroundColor,
        side: style == CRChipStyle.fill 
            ? BorderSide.none 
            : BorderSide(color: borderColor, width: borderWidth),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        elevation: 0,
        pressElevation: 0,
      );
    } else {
      chip = ActionChip(
        label: Text(label),
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        side: style == CRChipStyle.fill 
            ? BorderSide.none 
            : BorderSide(color: borderColor, width: borderWidth),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        elevation: 0,
        pressElevation: 0,
      );
    }

    return chip;
  }

  Color _getBackgroundColor(Color defaultColor) {
    switch (style) {
      case CRChipStyle.fill:
        return defaultColor;
      case CRChipStyle.outline:
      case CRChipStyle.ghost:
        return Colors.transparent;
    }
  }

  Color _getLabelColor(Color defaultColor) {
    if (textColor != null) return textColor!;
    
    switch (style) {
      case CRChipStyle.fill:
        return Colors.white;
      case CRChipStyle.outline:
      case CRChipStyle.ghost:
        return defaultColor;
    }
  }

  Color _getIconColor(Color defaultColor) {
    if (iconColor != null) return iconColor!;
    
    switch (style) {
      case CRChipStyle.fill:
        return Colors.white;
      case CRChipStyle.outline:
      case CRChipStyle.ghost:
        return defaultColor;
    }
  }

  Color _getBorderColor(Color defaultColor) {
    switch (style) {
      case CRChipStyle.fill:
        return Colors.transparent;
      case CRChipStyle.outline:
        return defaultColor;
      case CRChipStyle.ghost:
        return Colors.grey.shade300;
    }
  }
}
