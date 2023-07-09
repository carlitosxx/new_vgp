import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_schemes.dart';

final themeData = ThemeData(
  textTheme: GoogleFonts.latoTextTheme(),
  useMaterial3: true,
  colorScheme: lightColorScheme,
);
final themeDataDark = ThemeData(
  textTheme: GoogleFonts.latoTextTheme(),
  useMaterial3: true,
  colorScheme: darkColorScheme,
);
