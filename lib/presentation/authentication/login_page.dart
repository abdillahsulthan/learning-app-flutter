import 'package:flutter/material.dart';
import 'package:learning_app/core/values/colors.dart';
import 'package:learning_app/core/values/images.dart';
import 'package:learning_app/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                AppImages.loginImagePng,
                height: 255,
                width: 360,
              ),
              const SizedBox(
                height: 56,
              ),
              const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal',
                style: TextStyle(
                  color: AppColors.grey6A,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Expanded(child: SizedBox()),
              LoginButton(
                imageAsset: AppImages.googleLogoPng,
                text: 'Masuk dengan Google',
                backgroundColor: AppColors.white,
                textColor: AppColors.black1A,
                borderColor: AppColors.mint,
                onTap: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              LoginButton(
                imageAsset: AppImages.appleLogoPng,
                text: 'Masuk dengan Apple ID',
                backgroundColor: AppColors.black1A,
                textColor: AppColors.white,
                borderColor: AppColors.black1A,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
