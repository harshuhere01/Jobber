import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMedium500 extends StatelessWidget {
  TextMedium500({
    Key? key,
    required this.fontSize,
    required this.text,
    required this.textColor,
  }) : super(key: key);
  String text;
  double fontSize;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
