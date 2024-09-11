import 'package:e_commerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: CChipTheme.lightChipThemeData
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: CChipTheme.darkChipThemeData,
  );
  
}