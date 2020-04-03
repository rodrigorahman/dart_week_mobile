import 'package:flutter/material.dart';

class SizeUtils {
  static MediaQueryData _mediaQuery;
  static double widthScreen;
  static double heightScreen;
  static double statusBarHeight;

  static init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    widthScreen = _mediaQuery.size.width;
    heightScreen = _mediaQuery.size.height;
    statusBarHeight = _mediaQuery.padding.top;
  }


}