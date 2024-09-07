import 'package:flutter/material.dart';

class ParsingUtils {
  static bool isXml(String input) {
    return input.trim().startsWith('<');
  }

  static bool isJson(String input) {
    return input.trim().startsWith('{');
  }

  static double? parseSize(String? size) {
    if (size == null) return null;
    return double.tryParse(size);
  }

  static Color? parseColor(String? color) {
    if (color == null) return null;
    return Color(int.parse(color, radix: 16) + 0xFF000000);
  }

  static double? parseFontSize(String? fontSize) {
    if (fontSize == null) return null;
    return double.tryParse(fontSize);
  }
}