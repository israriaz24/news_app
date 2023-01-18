import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class CAppTheme {
  //! primary theme f the whole app
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(
        0xff6CC51D,
        <int, Color>{
          50: Color(0x1A6CC51D),
          100: Color(0x336CC51D),
          200: Color(0x4D6CC51D),
          300: Color(0x666CC51D),
          400: Color(0x806CC51D),
          500: Color(0xff6CC51D),
          600: Color(0x996CC51D),
          700: Color(0xb36CC51D),
          800: Color(0xcc6CC51D),
          900: Color(0xe66CC51D),
        },
      ),
      backgroundColor: CAppColors.background2,
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              color: CAppColors.background2,
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            Colors.transparent,
          ),
          elevation: MaterialStatePropertyAll(
            0,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: GoogleFonts.poppinsTextTheme());
}
