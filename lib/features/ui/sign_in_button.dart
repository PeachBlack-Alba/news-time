import 'package:flutter/material.dart';

import 'colors.dart';

class SignInButton extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String text;

  const SignInButton({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9, // Adjust the width factor as needed
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.white),
        ),
      ),
    );
  }
}
