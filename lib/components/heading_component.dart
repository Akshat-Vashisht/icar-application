import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingComponent extends StatelessWidget {
  final String title;
  final double fontSize;
  const HeadingComponent(
      {super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
