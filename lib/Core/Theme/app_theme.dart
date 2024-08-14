

import 'package:courses_task/Core/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static final ThemeData _themeLight = ThemeData(

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBlue,
      foregroundColor: AppColors.white,
      titleTextStyle:const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20
      ),
        surfaceTintColor: Colors.transparent
    ),

    scaffoldBackgroundColor: AppColors.white,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.blue),
        foregroundColor: WidgetStateProperty.all(AppColors.white),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ))
      )
    )

  );

  static final ThemeData _themeNight = ThemeData(

      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          titleTextStyle:const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),
        surfaceTintColor: Colors.transparent
      ),

      scaffoldBackgroundColor: AppColors.blue,


      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.white),
              foregroundColor: WidgetStateProperty.all(AppColors.blue),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ))
          )
      )

  );


  static ThemeData get themeNight => _themeNight;

  static ThemeData get themeLight => _themeLight;
}