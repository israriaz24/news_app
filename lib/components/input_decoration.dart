import 'package:flutter/material.dart';

InputDecoration textFieldMainDecoration(
    {required String hintText, Icon? icon}) {
  return InputDecoration(
    prefixIcon: icon,
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5.0),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5.0),
    ),
  );
}
