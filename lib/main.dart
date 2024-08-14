import 'package:courses_task/Core/Theme/app_theme.dart';
import 'package:courses_task/UI/CourseDetails/course_details_screen.dart';
import 'package:courses_task/UI/Home/home_screen.dart';
import 'package:courses_task/UI/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeNight,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName : (_)=> SplashScreen(),
        HomeScreen.routeName :(_) => HomeScreen(),
        CourseDetailsScreen.routeName : (_) => CourseDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}