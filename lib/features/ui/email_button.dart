import 'package:flutter/material.dart';
import 'package:news_app/features/ui/colors.dart';

class EmailButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color labelColor;
  final Color iconColor;

  const EmailButton({
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
            const SizedBox(width: 20.0),
          ],
        ),
        label: Row(
          children: [
            const SizedBox(width: 20.0),
            Text(
              label,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.lightGrey4),
            ),
          ],
        ),
      ),
    );
  }
}
