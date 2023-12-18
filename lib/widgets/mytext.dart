import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const MyText({
    super.key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: size ?? 15,
          color: color,
        ),
      ),
    );
  }
}
