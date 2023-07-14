import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final String asset;
  final String text;
  final Color backgroundColor;
  const LoginButton(
      {super.key,
      required this.asset,
      required this.text,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: StadiumBorder(
              side: BorderSide(
                  color: backgroundColor == Colors.white
                      ? Colors.lightBlueAccent
                      : Colors.transparent)),
          padding: const EdgeInsets.all(20),
          fixedSize: const Size(300, 60)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            asset,
            width: 26,
            height: 26,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: backgroundColor == Colors.black
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
