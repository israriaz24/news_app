import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/style/text_style.dart';

TextField searchField({
  required VoidCallback settings,
  VoidCallback? onTapped,
  required String hintText,
  Function(String val)? onChange,
}) {
  return TextField(
    onTap: onTapped,
    onChanged: onChange,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: subHeadingStyle(CAppColors.text2),
      fillColor: CAppColors.background2,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10.0),
      ),
      suffixIcon: IconButton(
        color: CAppColors.text2,
        onPressed: settings,
        icon: Icon(Icons.tune_outlined),
      ),
      prefixIcon: Icon(
        Icons.search_outlined,
        color: CAppColors.text2,
      ),
    ),
  );
}
