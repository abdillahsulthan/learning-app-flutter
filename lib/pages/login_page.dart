import 'package:flutter/material.dart';
import 'package:learning_app/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/login-image.png',
                  width: 360,
                  height: 255,
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  'Selamat Datang di Aplikasi Widya Edu \n Aplikasi Latihan dan Konsultasi Soal',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            const Column(
              children: [
                LoginButton(
                    asset: 'assets/images/google-logo.png',
                    text: 'Masuk dengan Google',
                    backgroundColor: Colors.white),
                SizedBox(height: 25),
                LoginButton(
                    asset: 'assets/images/apple-logo.png',
                    text: 'Masuk dengan Apple ID',
                    backgroundColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
