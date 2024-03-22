import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.sourceSerif4(
    fontSize: 32,
    color: Colors.orange,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: GoogleFonts.sourceSerif4(
    fontSize: 20,
    color: Colors.orange,
    fontWeight: FontWeight.w800,
  ),
  displaySmall: GoogleFonts.sourceSerif4(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.orange,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.orange,
    fontWeight: FontWeight.w400,
  ),
  headlineSmall: GoogleFonts.poppins(
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  ),
);

class AppColors {
  static Color lightBlue = const Color(0xffCFEDEF);
  static Color black = Colors.orange;
}

List<Color> boxColors = const [
  Color(0xffCEEDEF),
  Color(0xffBFBFBF),
  Color(0xffEBECF1),
  Color(0xffFDF7DD),
  Color(0xffF9CFE3),
  Color(0xffFBEBC7),
  Color(0xffE9E8E6)
];
