import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      padding: EdgeInsets.symmetric( vertical: D.H / 60),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          readOnly: readOnly,
          controller:controller,
          validator: validators,
          onChanged: onChanged,
          maxLength: maxlength,
          cursorColor: ColorConstants.primaryBlueColor,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: D.W / 40, vertical: D.H / 60),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            counterText: "",
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFD7D7D7), width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
            errorMaxLines: 1,
            hintText: hint,
            labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          keyboardType: keyboardTYPE,
        ),
      ),
    );
  }
}