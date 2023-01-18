import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

Container gradientButton1(
    {required BuildContext context,
    required double rWidth,
    required double rHeight,
    required String btnText,
    required VoidCallback onPress}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  double ratio = MediaQuery.of(context).size.aspectRatio;
  return Container(
    width: width * (rWidth / 100),
    height: height * (rHeight / 100),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      gradient: LinearGradient(
        colors: [CAppColors.primary, CAppColors.primaryDark],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
    ),
    child: ElevatedButton(
      onPressed: onPress,
      child: Text(btnText,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: width * 0.045,
            color: CAppColors.background,
          )),
    ),
  );
}
