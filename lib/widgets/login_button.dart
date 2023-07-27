import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String imageAsset;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.imageAsset,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Ink(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: borderColor,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 18),
              blurRadius: 40,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.1496),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              width: 26,
              height: 26,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
