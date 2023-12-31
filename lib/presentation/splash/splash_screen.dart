import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning_app/core/values/colors.dart';
import 'package:learning_app/presentation/authentication/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          'assets/images/edspert-logo.png',
          width: 159,
          height: 30,
        ),
      ),
    );
  }
}
