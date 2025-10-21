import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../values/colors/colors_default_key.dart';

/// Enum untuk tipe hint text field
enum CRTextFieldHintType {
  /// Hint statis di atas text field
  staticLabel,

  /// Hint dengan animasi material (floating label)
  floatingLabel,
}

/// Enum untuk style text field
enum CRTextFieldStyle {
  /// Style dengan fill (background penuh)
  fill,

  /// Style dengan garis bawah saja
  underline,
}

/// Enum untuk state text field
enum CRTextFieldState {
  /// State none
  none,

  /// State saat focus
  focus,

  /// State error
  error,

  /// State success
  success,

  /// State disable
  disable,
}

/// Enum untuk tipe input khusus
enum CRTextFieldInputType {
  /// Input text biasa
  text,

  /// Input password dengan toggle visibility
  password,

  /// Input dengan dropdown
  dropdown,

  /// Input nomor telepon dengan country code
  phoneNumber,
}

/// Configuration untuk setiap state text field
class CRTextFieldStateConfig {
  final double? borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? labelColor;
  final Widget? leftIcon;
  final double? borderWidth;

  const CRTextFieldStateConfig({
    this.borderRadius,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.hintColor,
    this.labelColor,
    this.leftIcon,
    this.borderWidth,
  });
}

class CRTextTextFieldMessageCardConfig {
  final Color? bgColor;
  final Color? iconColor;
  final Color? textColor;
  final IconData? icon;

  const CRTextTextFieldMessageCardConfig({
    this.bgColor,
    this.iconColor,
    this.textColor,
    this.icon,
  });
}

/// Widget text field yang sangat customizable dengan berbagai state dan konfigurasi
class CRTextField3 extends StatefulWidget {
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
  final CRTextFieldStateConfig noneConfig;
  final CRTextFieldStateConfig focusConfig;
  final CRTextFieldStateConfig errorConfig;
  final CRTextFieldStateConfig successConfig;
  final CRTextFieldStateConfig disableConfig;

  // Message card configuration
  final CRTextTextFieldMessageCardConfig messageCardSuccessConfig;
  final CRTextTextFieldMessageCardConfig messageCardErrorConfig;

  // Default styling values
  final double defaultBorderRadius;
  final Color defaultFillColor;
  final Color defaultBorderColor;
  final Color defaultTextColor;
  final Color defaultHintColor;
  final Color defaultLabelColor;
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

  const CRTextField3({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.hintType = CRTextFieldHintType.floatingLabel,
    this.style = CRTextFieldStyle.fill,
    this.inputType = CRTextFieldInputType.text,
    this.currentState = CRTextFieldState.none,
    this.message,
    required this.noneConfig,
    required this.focusConfig,
    required this.errorConfig,
    required this.successConfig,
    required this.disableConfig,
    required this.messageCardSuccessConfig,
    required this.messageCardErrorConfig,
    this.defaultBorderRadius = 12.0,
    this.defaultFillColor = Colors.white,
    this.defaultBorderColor = CRColorsDefault.grey2,
    this.defaultTextColor = CRColorsDefault.black1,
    this.defaultHintColor = CRColorsDefault.grey1,
    this.defaultLabelColor = CRColorsDefault.black1,
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
  State<CRTextField3> createState() => _CRTextField3State();
}

class _CRTextField3State extends State<CRTextField3> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _obscureText = true;
  String? _selectedCountryCode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
    _selectedCountryCode = widget.countryCode ?? '+62';
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  /// Mendapatkan konfigurasi berdasarkan state saat ini
  CRTextFieldStateConfig _getCurrentConfig() {
    // Jika disabled, gunakan disable config
    if (!widget.enabled) {
      return widget.disableConfig;
    } else

    // Jika focus, gunakan focus config
    if (_isFocused) {
      return widget.focusConfig;
    } else

    // Jika ada error, gunakan error config
    if (widget.currentState == CRTextFieldState.error) {
      return widget.errorConfig;
    } else

    // Jika ada success, gunakan success config
    if (widget.currentState == CRTextFieldState.success) {
      return widget.successConfig;
    } else {
      return widget.noneConfig;
    }

    // None config
  }

  CRTextTextFieldMessageCardConfig _getCurrentMessageCardConfig() {
    if (widget.currentState == CRTextFieldState.success) {
      return widget.messageCardSuccessConfig;
    } else if (widget.currentState == CRTextFieldState.error) {
      return widget.messageCardErrorConfig;
    } else {
      return const CRTextTextFieldMessageCardConfig();
    }
  }

  /// Mendapatkan nilai dengan fallback ke default
  double _getBorderRadius() {
    return _getCurrentConfig().borderRadius ?? widget.defaultBorderRadius;
  }

  Color _getFillColor() {
    return _getCurrentConfig().fillColor ?? widget.defaultFillColor;
  }

  Color _getBorderColor() {
    return _getCurrentConfig().borderColor ?? widget.defaultBorderColor;
  }

  Color _getTextColor() {
    return _getCurrentConfig().textColor ?? widget.defaultTextColor;
  }

  Color _getHintColor() {
    return _getCurrentConfig().hintColor ?? widget.defaultHintColor;
  }

  Color _getLabelColor() {
    return _getCurrentConfig().labelColor ?? widget.defaultLabelColor;
  }

  Widget? _getLeftIcon() {
    return _getCurrentConfig().leftIcon ?? widget.prefixIcon;
  }

  double _getBorderWidth() {
    return _getCurrentConfig().borderWidth ?? widget.defaultBorderWidth;
  }

  /// Build prefix icon dengan country code untuk phone number
  Widget? _buildPrefixIcon() {
    if (widget.inputType == CRTextFieldInputType.phoneNumber) {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<String>(
              value: _selectedCountryCode,
              underline: const SizedBox(),
              icon: const Icon(Icons.arrow_drop_down, size: 20),
              items: (widget.countryCodes ?? ['+62', '+1', '+65', '+60'])
                  .map((code) => DropdownMenuItem(
                        value: code,
                        child: Text(code),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCountryCode = value;
                });
                widget.onCountryCodeChanged?.call(value);
              },
            ),
            Container(
              width: 1,
              height: 24,
              color: _getBorderColor(),
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
        ),
      );
    }

    final leftIcon = _getLeftIcon();
    if (leftIcon != null) {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 8.0),
        child: leftIcon,
      );
    }

    return null;
  }

  /// Build suffix icon untuk password atau dropdown
  Widget? _buildSuffixIcon() {
    if (widget.inputType == CRTextFieldInputType.password) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
          color: _getHintColor(),
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }

    if (widget.inputType == CRTextFieldInputType.dropdown) {
      return Icon(
        Icons.arrow_drop_down,
        color: _getHintColor(),
      );
    }

    return widget.suffixIcon;
  }

  /// Build input decoration
  InputDecoration _buildInputDecoration() {
    final borderRadius = BorderRadius.circular(_getBorderRadius());
    final borderSide = BorderSide(
      color: _getBorderColor(),
      width: _getBorderWidth(),
    );

    InputBorder? border;
    InputBorder? focusedBorder;
    InputBorder? enabledBorder;
    InputBorder? errorBorder;
    InputBorder? disabledBorder;

    if (widget.style == CRTextFieldStyle.fill) {
      border = OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: borderSide,
      );
      focusedBorder = OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(
          color: widget.focusConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.focusConfig.borderWidth ?? 2.0,
        ),
      );
      enabledBorder = OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: borderSide,
      );
      errorBorder = OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(
          color: widget.errorConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.errorConfig.borderWidth ?? 2.0,
        ),
      );
      disabledBorder = OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(
          color: widget.disableConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.disableConfig.borderWidth ?? 1.0,
        ),
      );
    } else {
      border = UnderlineInputBorder(
        borderSide: borderSide,
      );
      focusedBorder = UnderlineInputBorder(
        borderSide: BorderSide(
          color: widget.focusConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.focusConfig.borderWidth ?? 2.0,
        ),
      );
      enabledBorder = UnderlineInputBorder(
        borderSide: borderSide,
      );
      errorBorder = UnderlineInputBorder(
        borderSide: BorderSide(
          color: widget.errorConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.errorConfig.borderWidth ?? 2.0,
        ),
      );
      disabledBorder = UnderlineInputBorder(
        borderSide: BorderSide(
          color: widget.disableConfig.borderColor ?? widget.defaultBorderColor,
          width: widget.disableConfig.borderWidth ?? 1.0,
        ),
      );
    }

    return InputDecoration(
      hintText: widget.hintType == CRTextFieldHintType.floatingLabel
          ? widget.hintText
          : widget.hintText,
      labelText: widget.hintType == CRTextFieldHintType.floatingLabel
          ? widget.labelText
          : null,
      labelStyle: TextStyle(
        color: _getLabelColor(),
      ),
      hintStyle: TextStyle(
        color: _getHintColor(),
      ),
      filled: widget.style == CRTextFieldStyle.fill ? true : false,
      fillColor: _getFillColor(),
      border: border,
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      disabledBorder: disabledBorder,
      focusedErrorBorder: errorBorder,
      prefixIcon: _buildPrefixIcon(),
      suffixIcon: _buildSuffixIcon(),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
    );
  }

  /// Build text field
  Widget _buildTextField() {
    if (widget.inputType == CRTextFieldInputType.dropdown &&
        widget.dropdownItems != null) {
      return DropdownButtonFormField<String>(
        value: widget.dropdownValue,
        decoration: _buildInputDecoration(),
        style: TextStyle(color: _getTextColor()),
        items: widget.dropdownItems!
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: widget.enabled ? widget.onDropdownChanged : null,
      );
    }

    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      obscureText:
          widget.inputType == CRTextFieldInputType.password && _obscureText,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      style: TextStyle(color: _getTextColor()),
      decoration: _buildInputDecoration(),
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onSubmitted: widget.onSubmitted,
    );
  }

  /// Build static label (untuk hint type static)
  Widget? _buildStaticLabel() {
    if (widget.hintType == CRTextFieldHintType.staticLabel &&
        widget.labelText != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          widget.labelText!,
          style: TextStyle(
            color: _getLabelColor(),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
    return null;
  }

  /// Build message card
  Widget? _buildMessageCard() {
    if (widget.message == null ||
        widget.currentState == CRTextFieldState.none ||
        widget.currentState == CRTextFieldState.focus ||
        widget.currentState == CRTextFieldState.disable) {
      return null;
    }

    Color? bgColor;
    Color? iconColor;
    IconData? icon;

    switch (widget.currentState) {
      case CRTextFieldState.error:
        bgColor =
            _getCurrentMessageCardConfig().bgColor ?? CRColorsDefault.red2;
        iconColor =
            _getCurrentMessageCardConfig().iconColor ?? CRColorsDefault.error;
        icon = Icons.error_outline;
        break;
      case CRTextFieldState.success:
        bgColor =
            _getCurrentMessageCardConfig().bgColor ?? CRColorsDefault.success1;
        iconColor = _getCurrentMessageCardConfig().iconColor ??
            CRColorsDefault.success3;
        icon = Icons.check_circle_outline;
        break;
      default:
        return null;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.message ?? "",
                style: TextStyle(
                  color: iconColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_buildStaticLabel() != null) _buildStaticLabel()!,
          _buildTextField(),
          if (_buildMessageCard() != null) _buildMessageCard()!,
        ],
      ),
    );
  }
}
