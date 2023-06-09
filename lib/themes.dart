import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color colorWhite = Color(0xffF9FAFE);
const Color colorBright = Color(0xffffffff);
const Color colorBlack = Color(0xff181441);
const Color colorGrey = Color(0xffA1A0A3);
const Color colorTile = Color(0xffFDFDFD);
const Color colorTileShadow = Color.fromARGB(25, 220, 232, 255);
const Color colorTileTitle = Color(0xffA2A2A2);
const Color colorTileSubTitle = Color(0xffD1D0D3);
const Color colorContrast = Color(0xffFF684D);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: colorWhite,
    ),
    colorScheme: const ColorScheme.light(
        background: colorWhite, primary: colorTile, secondary: colorBright));

TextStyle get headerStyle {
  return GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 21, fontWeight: FontWeight.w700, color: colorBlack));
}

TextStyle get subHeaderStyle {
  return GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: colorBlack));
}

TextStyle get tileTitleStyle {
  return GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: colorTileTitle));
}

TextStyle get tileValueStyle {
  return GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: colorBlack));
}

TextStyle get tileSubTitleStyle {
  return GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: colorTileSubTitle));
}
