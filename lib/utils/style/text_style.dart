import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../constants/colors.dart';

TextStyle headingStyle(Color textColor) {
  return TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
    fontSize: 34,
  );
}

TextStyle heading({required double size, FontWeight? fontWeight}) {
  return TextStyle(
      color: CAppColors.text1, fontWeight: fontWeight, fontSize: size);
}

TextStyle appbarTextStyle(Color textColor) => TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: textColor,
    );
TextStyle heading2Style(Color textColor) => TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    );
TextStyle text({required double size, FontWeight? fontWeight}) {
  return TextStyle(
      color: CAppColors.text2, fontWeight: fontWeight, fontSize: size);
}

TextStyle heading3Style(Color textColor) => TextStyle(
      color: textColor,
      fontWeight: FontWeight.w700,
      fontSize: 26,
    );
TextStyle subHeadingStyle(Color textColor) => TextStyle(
      color: textColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
TextStyle iconTextStyle(Color textColor) => TextStyle(
      color: textColor,
      fontWeight: FontWeight.w500,
      fontSize: 13,
    );
