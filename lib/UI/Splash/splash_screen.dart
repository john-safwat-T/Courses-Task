
import 'package:courses_task/Core/Images/image_assets_provider.dart';
import 'package:courses_task/Core/Utils/app_colors.dart';
import 'package:courses_task/UI/Home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
          (value) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.logoBlue,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Image.asset(ImageAssetsProvider.logoPath),
        ),
      ),
    );
  }
}

