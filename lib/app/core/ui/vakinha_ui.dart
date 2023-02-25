import 'package:adf_vakinhaburger_getx/app/core/ui/constants/vakinha_colors.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/constants/vakinha_fonts.dart';
import 'package:flutter/material.dart';

class VakinhaUI {
  VakinhaUI._();

  static final theme = ThemeData(
    primaryColor: VakinhaColors.primaryGreen,
    primaryColorDark: VakinhaColors.primaryDark,
    fontFamily: VakinhaFonts.fontMplus1,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: VakinhaColors.primaryGreen,
        textStyle: const TextStyle(fontFamily: VakinhaFonts.fontMplus1),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      selectedLabelStyle: textBold,
      unselectedItemColor: Colors.grey[400],
      unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
    ),
  );

  static const textBold = TextStyle(fontWeight: FontWeight.bold);
}
