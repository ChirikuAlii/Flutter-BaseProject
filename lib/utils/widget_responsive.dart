import "package:flutter/material.dart";

class Adaptive {
  final BuildContext context;

  Adaptive._(this.context);

  double get _width => MediaQuery.of(context).size.width;
  double get _height => MediaQuery.of(context).size.height;

  double get totalWidth => MediaQuery.of(context).size.width;
  double get totalHeight => MediaQuery.of(context).size.height;

  /// widht hegith from figma or adobexd
  double get _designerWidth => 375;
  double get _designerHeight => 812;

  factory Adaptive.of(BuildContext context) {
    return Adaptive._(context);
  }

  double width(double size) {
    return size;
  }

  double height(double size) {
    return size;
  }

  double widthDesign(double size) {
    final percentage = (size / _designerWidth * 100).roundToDouble() / 100;
    return _width * percentage;
  }

  double heightDesign(double size) {
    final percentage = (size / _designerHeight * 100).roundToDouble() / 100;
    return _height * percentage;
  }

  double widthPercent(double percent) {
    final double result = _width * percent / 100;
    return result;
  }

  double heightPercent(double percent) {
    final double result = _height * percent / 100;
    return result;
  }
}
