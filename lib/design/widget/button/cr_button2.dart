import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Enum untuk menentukan style button
enum CRButtonStyle {
  filled,
  outlined,
}

/// Enum untuk menentukan posisi icon
enum CRButtonIconPosition {
  /// Icon di tengah kiri text
  centerLeft,

  /// Icon di tengah kanan text
  centerRight,

  /// Icon sebelah kiri text dan di ujung kiri
  leftLeft,

  /// Icon sebelah kiri text dan di ujung kanan
  rightLeft,

  /// Icon sebelah kanan text dan di ujung kanan
  rightRight,

  /// Icon sebelah kanan text dan di ujung kiri
  leftRight,
}

/// Enum untuk tipe icon
enum CRButtonIconType {
  icon,
  svg,
  image,
}

/// Class untuk konfigurasi icon button (bisa Icon, SVG, atau Image)
class CRButtonIcon {
  final CRButtonIconType type;
  final dynamic data; // IconData, String (path), atau ImageProvider
  final double? size;
  final Color? color;
  final BoxFit? fit; // Untuk image

  const CRButtonIcon.icon(
    IconData iconData, {
    this.size,
    this.color,
  })  : type = CRButtonIconType.icon,
        data = iconData,
        fit = null;

  const CRButtonIcon.svg(
    String assetPath, {
    this.size,
    this.color,
  })  : type = CRButtonIconType.svg,
        data = assetPath,
        fit = null;

  const CRButtonIcon.image(
    String assetPath, {
    this.size,
    this.fit = BoxFit.contain,
  })  : type = CRButtonIconType.image,
        data = assetPath,
        color = null;

  Widget build({double? defaultSize, Color? defaultColor}) {
    final iconSize = size ?? defaultSize ?? 20.0;
    final iconColor = color ?? defaultColor;

    switch (type) {
      case CRButtonIconType.icon:
        return Icon(
          data as IconData,
          size: iconSize,
          color: iconColor,
        );
      case CRButtonIconType.svg:
        return SvgPicture.asset(
          data as String,
          width: iconSize,
          height: iconSize,
          colorFilter: iconColor != null
              ? ColorFilter.mode(iconColor, BlendMode.srcIn)
              : null,
        );
      case CRButtonIconType.image:
        return Image.asset(
          data as String,
          width: iconSize,
          height: iconSize,
          fit: fit,
        );
    }
  }
}

/// Enum untuk jenis efek hover
enum CRButtonHoverEffect {
  /// Efek scale (membesar sedikit)
  scale,

  /// Efek brightness (lebih terang)
  brightness,

  /// Efek elevation (shadow)
  elevation,

  /// Tanpa efek
  none,
}

/// Class untuk konfigurasi state button
class CRButtonStateConfig {
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final Color? iconColor;

  const CRButtonStateConfig({
    this.fillColor,
    this.borderColor,
    this.textStyle,
    this.iconColor,
  });
}

/// Custom Button Component dengan berbagai konfigurasi
class CRButton2 extends StatefulWidget {
  /// Text yang ditampilkan di button
  final String text;

  /// Style button (filled atau outlined)
  final CRButtonStyle style;

  /// Callback ketika button ditekan
  final VoidCallback? onPressed;

  /// Icon di sisi kiri (opsional) - bisa Icon, SVG, atau Image
  final CRButtonIcon? iconLeft;

  /// Icon di sisi kanan (opsional) - bisa Icon, SVG, atau Image
  final CRButtonIcon? iconRight;

  /// Radius sudut button
  final double radiusCorner;

  /// Posisi icon
  final CRButtonIconPosition iconPosition;

  /// Ukuran icon default (jika tidak diset di CRButtonIcon)
  final double iconSize;

  /// Spacing antara icon dan text
  final double iconSpacing;

  /// Padding button
  final EdgeInsetsGeometry padding;

  /// Lebar button (null = wrap content)
  final double? width;

  /// Tinggi button
  final double height;

  /// Konfigurasi state active
  final CRButtonStateConfig activeConfig;

  /// Konfigurasi state disabled
  final CRButtonStateConfig disabledConfig;

  /// Lebar border
  final double borderWidth;

  /// Jenis efek hover
  final CRButtonHoverEffect hoverEffect;

  /// Durasi animasi
  final Duration animationDuration;

  const CRButton2({
    Key? key,
    required this.text,
    this.style = CRButtonStyle.filled,
    this.onPressed,
    this.iconLeft,
    this.iconRight,
    this.radiusCorner = 12.0,
    this.iconPosition = CRButtonIconPosition.centerLeft,
    this.iconSize = 20.0,
    this.iconSpacing = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    this.width,
    this.height = 56.0,
    this.activeConfig = const CRButtonStateConfig(
      fillColor: Color(0xFF2D9F8E),
      borderColor: Color(0xFF2D9F8E),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      iconColor: Colors.white,
    ),
    this.disabledConfig = const CRButtonStateConfig(
      fillColor: Color(0xFFE0E0E0),
      borderColor: Color(0xFFBDBDBD),
      textStyle: TextStyle(
        color: Color(0xFF9E9E9E),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      iconColor: Color(0xFF9E9E9E),
    ),
    this.borderWidth = 2.0,
    this.hoverEffect = CRButtonHoverEffect.brightness,
    this.animationDuration = const Duration(milliseconds: 150),
  }) : super(key: key);

  @override
  State<CRButton2> createState() => _CRButton2State();
}

class _CRButton2State extends State<CRButton2>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isPressed = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleHoverChange(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });

    // Only trigger animation controller for scale effect
    if (widget.onPressed != null && widget.hoverEffect == CRButtonHoverEffect.scale) {
      if (isHovered) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  void _handleTapDown(TapDownDetails details) {
    if (widget.onPressed != null) {
      setState(() {
        _isPressed = true;
      });
    }
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = widget.onPressed == null;
    final config = isDisabled ? widget.disabledConfig : widget.activeConfig;

    // Tentukan warna berdasarkan style dan state
    Color backgroundColor;
    Color borderColor;

    if (widget.style == CRButtonStyle.filled) {
      backgroundColor = config.fillColor ?? Colors.blue;
      borderColor = config.fillColor ?? Colors.blue;
    } else {
      backgroundColor = Colors.transparent;
      borderColor = config.borderColor ?? Colors.blue;
    }

    // Build button content based on hover effect type
    Widget buttonContent;
    
    if (!isDisabled && widget.hoverEffect == CRButtonHoverEffect.brightness) {
      // Brightness effect - Material style with InkWell (like ElevatedButton)
      buttonContent = Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(widget.radiusCorner),
        child: InkWell(
          onTap: () {}, // Empty onTap for ink effect, actual tap handled by Semantics
          onTapDown: _handleTapDown,
          onTapCancel: _handleTapCancel,
          onHover: (hovering) {
            // This provides additional hover feedback
          },
          borderRadius: BorderRadius.circular(widget.radiusCorner),
          splashColor: Colors.white.withOpacity(0.2),
          highlightColor: Colors.white.withOpacity(0.1),
          hoverColor: Colors.white.withOpacity(0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.radiusCorner),
              border: widget.style == CRButtonStyle.outlined
                  ? Border.all(
                      color: borderColor,
                      width: widget.borderWidth,
                    )
                  : null,
            ),
            child: _buildInnerContent(config),
          ),
        ),
      );
    } else if (!isDisabled && widget.hoverEffect == CRButtonHoverEffect.elevation) {
      // Elevation effect - static size, shadow changes with press feedback
      List<BoxShadow> shadows;
      
      if (_isPressed) {
        // Pressed state - minimal shadow (button pushed down)
        shadows = [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ];
      } else if (_isHovered) {
        // Hovered state - elevated shadow
        shadows = [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ];
      } else {
        // Default state - medium shadow
        shadows = [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ];
      }
      
      buttonContent = AnimatedContainer(
        duration: widget.animationDuration,
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radiusCorner),
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: widget.borderWidth,
          ),
          boxShadow: shadows,
        ),
        child: Stack(
          children: [
            // Subtle overlay when pressed
            if (_isPressed)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.radiusCorner - widget.borderWidth),
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
            _buildInnerContent(config),
          ],
        ),
      );
    } else if (isDisabled && widget.hoverEffect == CRButtonHoverEffect.brightness) {
      // Disabled state for brightness effect
      buttonContent = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radiusCorner),
          color: backgroundColor,
          border: widget.style == CRButtonStyle.outlined
              ? Border.all(
                  color: borderColor,
                  width: widget.borderWidth,
                )
              : null,
        ),
        child: _buildInnerContent(config),
      );
    } else {
      // Default or none - static
      buttonContent = _buildButtonContent(config);
    }

    // Wrap with scale effect if needed (only this changes size)
    Widget effectWrapper = buttonContent;
    if (!isDisabled && widget.hoverEffect == CRButtonHoverEffect.scale) {
      effectWrapper = ScaleTransition(
        scale: _scaleAnimation,
        child: buttonContent,
      );
    }

    // Apply press effect (only for scale effect)
    if (_isPressed && !isDisabled && widget.hoverEffect == CRButtonHoverEffect.scale) {
      effectWrapper = Transform.scale(
        scale: 0.97,
        child: effectWrapper,
      );
    }

    return Semantics(
      button: true,
      enabled: !isDisabled,
      label: widget.text,
      onTap: isDisabled ? null : widget.onPressed,
      child: MouseRegion(
        key: ValueKey('mouse_region_${widget.text}_${widget.hashCode}'),
        onEnter: (_) => _handleHoverChange(true),
        onExit: (_) => _handleHoverChange(false),
        cursor: isDisabled
            ? SystemMouseCursors.forbidden
            : SystemMouseCursors.click,
        child: GestureDetector(
          onTapDown: _handleTapDown,
          onTapUp: _handleTapUp,
          onTapCancel: _handleTapCancel,
          onTap: widget.onPressed,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: effectWrapper,
          ),
        ),
      ),
    );
  }

  Widget _buildButtonContent(CRButtonStateConfig config) {
    Color backgroundColor;
    Color borderColor;

    if (widget.style == CRButtonStyle.filled) {
      backgroundColor = config.fillColor ?? Colors.blue;
      borderColor = config.fillColor ?? Colors.blue;
    } else {
      backgroundColor = Colors.transparent;
      borderColor = config.borderColor ?? Colors.blue;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radiusCorner),
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: widget.borderWidth,
        ),
      ),
      child: _buildInnerContent(config),
    );
  }

  Widget _buildInnerContent(CRButtonStateConfig config) {
    final hasIconLeft = widget.iconLeft != null;
    final hasIconRight = widget.iconRight != null;

    Widget content;

    switch (widget.iconPosition) {
      case CRButtonIconPosition.centerLeft:
        content = _buildCenterLayout(
          config,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;

      case CRButtonIconPosition.centerRight:
        content = _buildCenterLayout(
          config,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;

      case CRButtonIconPosition.leftLeft:
        content = _buildEdgeLayout(
          config,
          alignment: MainAxisAlignment.start,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;

      case CRButtonIconPosition.rightLeft:
        content = _buildEdgeLayout(
          config,
          alignment: MainAxisAlignment.end,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;

      case CRButtonIconPosition.rightRight:
        content = _buildEdgeLayout(
          config,
          alignment: MainAxisAlignment.end,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;

      case CRButtonIconPosition.leftRight:
        content = _buildEdgeLayout(
          config,
          alignment: MainAxisAlignment.start,
          iconLeft: hasIconLeft,
          iconRight: hasIconRight,
        );
        break;
    }

    return Padding(
      padding: widget.padding,
      child: content,
    );
  }

  Widget _buildCenterLayout(
    CRButtonStateConfig config, {
    required bool iconLeft,
    required bool iconRight,
  }) {
    List<Widget> children = [];

    // Icon left
    if (iconLeft) {
      children.add(
        widget.iconLeft!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ),
      );
      children.add(SizedBox(width: widget.iconSpacing));
    }

    // Text
    children.add(
      Flexible(
        child: Text(
          widget.text,
          style: config.textStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );

    // Icon right
    if (iconRight) {
      children.add(SizedBox(width: widget.iconSpacing));
      children.add(
        widget.iconRight!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  Widget _buildEdgeLayout(
    CRButtonStateConfig config, {
    required MainAxisAlignment alignment,
    required bool iconLeft,
    required bool iconRight,
  }) {
    List<Widget> children = [];
    
    // leftLeft: icon kiri text, di ujung kiri
    if (widget.iconPosition == CRButtonIconPosition.leftLeft) {
      if (iconLeft) {
        children.add(widget.iconLeft!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ));
        children.add(SizedBox(width: widget.iconSpacing));
      }
      children.add(const Spacer());
      children.add(Text(
        widget.text,
        style: config.textStyle,
        overflow: TextOverflow.ellipsis,
      ));
      children.add(const Spacer());
      if (iconRight) {
        children.add(SizedBox(width: widget.iconSpacing));
        children.add(widget.iconRight!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ));
      }
    }
    // leftRight: icon kanan text, di ujung kiri
    else if (widget.iconPosition == CRButtonIconPosition.leftRight) {
      children.add(const Spacer());
      children.add(Text(
        widget.text,
        style: config.textStyle,
        overflow: TextOverflow.ellipsis,
      ));
      if (iconRight) {
        children.add(SizedBox(width: widget.iconSpacing));
        children.add(widget.iconRight!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ));
      }
      children.add(const Spacer());
    }
    // rightLeft: icon kiri text, di ujung kanan
    else if (widget.iconPosition == CRButtonIconPosition.rightLeft) {
      children.add(const Spacer());
      if (iconLeft) {
        children.add(widget.iconLeft!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ));
        children.add(SizedBox(width: widget.iconSpacing));
      }
      children.add(Text(
        widget.text,
        style: config.textStyle,
        overflow: TextOverflow.ellipsis,
      ));
      children.add(const Spacer());
    }
    // rightRight: icon kanan text, di ujung kanan
    else if (widget.iconPosition == CRButtonIconPosition.rightRight) {
      children.add(const Spacer());
      children.add(Text(
        widget.text,
        style: config.textStyle,
        overflow: TextOverflow.ellipsis,
      ));
      children.add(const Spacer());
      if (iconRight) {
        children.add(SizedBox(width: widget.iconSpacing));
        children.add(widget.iconRight!.build(
          defaultSize: widget.iconSize,
          defaultColor: config.iconColor,
        ));
      }
    }
    
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
