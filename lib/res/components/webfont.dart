import 'package:flutter/material.dart';

class ResponsiveUtils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static double responsiveWidth(BuildContext context, double mobileWidth, double webWidth) {
    return isMobile(context) ? mobileWidth : webWidth;
  }

  static double responsiveHeight(BuildContext context, double mobileHeight, double webHeight) {
    return isMobile(context) ? mobileHeight : webHeight;
  }

  static double responsiveFontSize(BuildContext context, double mobileFontSize, double webFontSize) {
    return isMobile(context) ? mobileFontSize : webFontSize;
  }
}