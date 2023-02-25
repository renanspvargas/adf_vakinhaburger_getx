import 'package:adf_vakinhaburger_getx/app/core/ui/ui_constants.dart';
import 'package:flutter/material.dart';

class VakinhaUI {
  VakinhaUI._();

  static final theme = ThemeData(
    primaryColor: UiConstants.primaryGreen,
    primaryColorDark: UiConstants.primaryDark,
    fontFamily: UiConstants.fontMplus1,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: UiConstants.primaryGreen,
        textStyle: const TextStyle(fontFamily: UiConstants.fontMplus1),
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
