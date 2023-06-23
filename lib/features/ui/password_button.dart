import 'package:flutter/material.dart';
import 'package:news_app/features/ui/colors.dart';

class PasswordButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color labelColor;
  final Color iconColor;

  const PasswordButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.labelColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9, // Adjust the width factor as needed
      child: FloatingActionButton.extended(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        onPressed: onPressed,
        icon: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
            const SizedBox(width: 30.0),
          ],
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.lightGrey4),
        ),
      ),
    );
  }
}
