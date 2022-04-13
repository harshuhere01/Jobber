import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/color_constants.dart';
import '../Utils/dimensions.dart';

class CustomBorderTextFormField extends StatelessWidget {
  CustomBorderTextFormField(
      {Key? key,
        required this.controller,
        required this.readOnly,
        required this.hint,
        required this.validators,
        required this.keyboardTYPE,
        this.maxlength, this.onChanged})
      : super(key: key);

  final TextEditingController controller;
  String hint;
  int? maxlength;
  bool readOnly;
  TextInputType? keyboardTYPE;
  final FormFieldValidator<String> validators;
  final FormFieldValidator<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: D.H / 150),
      child: TextFormField(
        readOnly: readOnly,
        controller:controller,
        validator: validators,
        onChanged: onChanged,
        maxLength: maxlength,
        cursorColor: ColorConstants.primaryBlueColor,
        style: GoogleFonts.roboto(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: D.W / 40, vertical: D.H / 60),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          counterText: "",
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          errorMaxLines: 1,
          hintText: hint,
          labelStyle: GoogleFonts.roboto(fontSize: 16.0, color: Colors.grey),
        ),
        keyboardType: keyboardTYPE,
      ),
    );
  }
}