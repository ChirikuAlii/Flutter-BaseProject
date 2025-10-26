import 'package:flutter/material.dart';

/// Class untuk konfigurasi state chip (selected/unselected)
class CRChipStateConfig {
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;

  const CRChipStateConfig({
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.iconColor,
  });
}

/// Compose class untuk Selectable Chip dengan dukungan light/dark mode
class CRChipSelectableCompose extends StatelessWidget {
  /// Label text yang ditampilkan
  final String label;

  /// Apakah chip sedang dipilih
  final bool isSelected;

  /// Callback ketika chip ditekan
  final VoidCallback? onPressed;

  /// Konfigurasi state selected
  final CRChipStateConfig? selectedConfig;

  /// Konfigurasi state unselected
  final CRChipStateConfig? unselectedConfig;

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

  /// Lebar border
  final double borderWidth;

  /// Durasi animasi
  final Duration animationDuration;

  const CRChipSelectableCompose({
    Key? key,
    required this.label,
    required this.isSelected,
    this.onPressed,
    this.selectedConfig,
    this.unselectedConfig,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.paddingHorizontal = 24,
    this.paddingVertical = 12,
    this.borderRadius = 24,
    this.borderWidth = 2,
    this.animationDuration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default configurations - put in build method for consistency
    final CRChipStateConfig defaultSelectedConfig = CRChipStateConfig(
      fillColor: const Color(0xFF2D9F8E),
      borderColor: const Color(0xFF2D9F8E),
      textColor: Colors.white,
      iconColor: Colors.white,
    );

    final CRChipStateConfig defaultUnselectedConfig = CRChipStateConfig(
      fillColor: Colors.transparent,
      borderColor: const Color(0xFFE0E0E0),
      textColor: const Color(0xFF424242),
      iconColor: const Color(0xFF424242),
    );

    // Use provided config or default
    final config = isSelected 
        ? (selectedConfig ?? defaultSelectedConfig)
        : (unselectedConfig ?? defaultUnselectedConfig);
    
    final Color backgroundColor = config.fillColor ?? Colors.transparent;
    final Color borderColor = config.borderColor ?? const Color(0xFFE0E0E0);
    final Color labelColor = config.textColor ?? const Color(0xFF424242);

    return AnimatedContainer(
      duration: animationDuration,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal,
              vertical: paddingVertical,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Widget helper untuk membuat group of selectable chips
class CRChipSelectableGroup extends StatefulWidget {
  /// List of chip labels
  final List<String> labels;

  /// Index yang dipilih (default 0)
  final int initialSelectedIndex;

  /// Callback ketika chip dipilih
  final ValueChanged<int>? onSelected;

  /// Konfigurasi state selected
  final CRChipStateConfig? selectedConfig;

  /// Konfigurasi state unselected
  final CRChipStateConfig? unselectedConfig;

  /// Spacing antara chips
  final double spacing;

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

  /// Lebar border
  final double borderWidth;

  const CRChipSelectableGroup({
    Key? key,
    required this.labels,
    this.initialSelectedIndex = 0,
    this.onSelected,
    this.selectedConfig,
    this.unselectedConfig,
    this.spacing = 12,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.paddingHorizontal = 24,
    this.paddingVertical = 12,
    this.borderRadius = 24,
    this.borderWidth = 2,
  }) : super(key: key);

  @override
  State<CRChipSelectableGroup> createState() => _CRChipSelectableGroupState();
}

class _CRChipSelectableGroupState extends State<CRChipSelectableGroup> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    // Default configurations - put in build method for consistency
    final CRChipStateConfig defaultSelectedConfig = CRChipStateConfig(
      fillColor: const Color(0xFF2D9F8E),
      borderColor: const Color(0xFF2D9F8E),
      textColor: Colors.white,
      iconColor: Colors.white,
    );

    final CRChipStateConfig defaultUnselectedConfig = CRChipStateConfig(
      fillColor: Colors.transparent,
      borderColor: const Color(0xFFE0E0E0),
      textColor: const Color(0xFF424242),
      iconColor: const Color(0xFF424242),
    );

    return Wrap(
      spacing: widget.spacing,
      runSpacing: widget.spacing,
      children: List.generate(
        widget.labels.length,
        (index) => CRChipSelectableCompose(
          label: widget.labels[index],
          isSelected: _selectedIndex == index,
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
            widget.onSelected?.call(index);
          },
          selectedConfig: widget.selectedConfig ?? defaultSelectedConfig,
          unselectedConfig: widget.unselectedConfig ?? defaultUnselectedConfig,
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          paddingHorizontal: widget.paddingHorizontal,
          paddingVertical: widget.paddingVertical,
          borderRadius: widget.borderRadius,
          borderWidth: widget.borderWidth,
        ),
      ),
    );
  }
}
