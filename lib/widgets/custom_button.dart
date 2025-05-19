import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: Colors.blue.withAlpha((0.8 * 255).round()),),
      label: Text(label, style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyLarge,
          fontSize: 13,
          fontWeight: FontWeight.w500),),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: onPressed,
    );
  }
}
