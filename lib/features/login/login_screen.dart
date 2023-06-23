import 'package:flutter/material.dart';
import 'package:news_app/features/ui/email_button.dart';
import 'package:news_app/features/ui/sign_in_button.dart';

import '../ui/colors.dart';
import '../ui/password_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: AppColors.black),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome back 👋',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'I am happy to see you again. You can continue where you left off by logging in',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 100.0),
            EmailButton(
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.black,
              onPressed: () {
                // Handle button press.
              },
              icon: Icons.email_outlined,
              iconColor: AppColors.lightGrey4,
              label: 'Email',
              labelColor: AppColors.lightGrey4,
            ),
            const SizedBox(height: 20.0),
            PasswordButton(
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.black,
              onPressed: () {
                // Handle button press.
              },
              icon: Icons.lock_outline,
              iconColor: AppColors.lightGrey4,
              label: 'Password',
              labelColor: AppColors.lightGrey4,
            ),
            const SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add your logic for "Forgot password" here
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: AppColors.accentColorBlue),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            SignInButton(backgroundColor: AppColors.lightGrey1, onPressed: () {}, text: 'Sign In'),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Add your logic for "Don't have an account" here
              },
              child: const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: AppColors.accentColorBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
