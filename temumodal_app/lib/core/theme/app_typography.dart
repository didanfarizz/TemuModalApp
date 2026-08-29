import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  const AppTypography._();

  static final TextStyle _inter = GoogleFonts.inter();

  static TextStyle header1 = _inter.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle header2 = _inter.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle header3 = _inter.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle header4 = _inter.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle header5 = _inter.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle header6 = _inter.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  static TextStyle body1 = _inter.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.25,
  );
  static TextStyle body2 = _inter.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.25,
  );
  static TextStyle body3 = _inter.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.25,
  );
}
