import 'package:flutter/material.dart';

class ThemeUtils {
  static Color primaryColor;

  static init(BuildContext context) {
    primaryColor = Theme.of(context).primaryColor;
  }

}