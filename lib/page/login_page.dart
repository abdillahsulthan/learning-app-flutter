import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          )),
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
                  'assets/login-image.png',
                  width: 360,
                  height: 255,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Selamat Datang',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Text(
                  'Selamat Datang di Aplikasi Widya Edu \n Aplikasi Latihan dan Konsultasi Soal',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
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
                    asset: 'assets/google-logo.png',
                    text: 'Masuk dengan Google',
                    backgroundColor: Colors.white),
                SizedBox(height: 25),
                LoginButton(
                    asset: 'assets/apple-logo.png',
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
