import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/src/config/theme_manager/app_color.dart';
import 'package:my_project/src/config/theme_manager/app_size.dart';
import 'package:my_project/src/config/theme_manager/font_manager.dart';

ThemeData lightTheme() {
  return ThemeData(
          // useMaterial3: true,
          )
      .copyWith(
    appBarTheme: AppBarTheme(
      toolbarTextStyle: GoogleFonts.courgette(),
      backgroundColor: AppColor.primary,
      iconTheme: const IconThemeData(
        color: AppColor.white,
      ),
      actionsIconTheme: const IconThemeData(
        color: AppColor.white,
      ),
    ),
    cardTheme: const CardTheme(color: AppColor.white),
    scaffoldBackgroundColor: AppColor.white,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.courgette(
        fontSize: AppSize.s20,
        fontWeight: FontManager.bold,
        color: AppColor.primary,
      ),
      bodyLarge: TextStyle(
        fontSize: AppSize.s16,
        color: AppColor.primary,
        fontWeight: FontManager.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: AppSize.s14,
        color: AppColor.grey900,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
          // useMaterial3: true,
          )
      .copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.grey900,
      iconTheme: const IconThemeData(
        color: AppColor.white,
      ),
      actionsIconTheme: const IconThemeData(
        color: AppColor.white,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.grey900,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    cardTheme: const CardTheme(color: Colors.black),
    scaffoldBackgroundColor: AppColor.grey900,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.courgette(
        fontSize: AppSize.s20,
        fontWeight: FontManager.bold,
        color: AppColor.white,
      ),
      bodyLarge: TextStyle(
        fontSize: AppSize.s16,
        color: AppColor.grey900,
        fontWeight: FontManager.bold,
      ),
      bodyMedium: const TextStyle(
        fontSize: AppSize.s14,
        color: AppColor.white,
      ),
    ),
  );
}
