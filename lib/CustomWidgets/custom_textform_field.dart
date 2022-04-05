import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/color_constants.dart';
import '../Utils/dimensions.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
        required this.controller,
        required this.readOnly,
        required this.hint,
        required this.iconPath,
        required this.validators,
        required this.keyboardTYPE,
        this.maxlength, this.onChanged})
      : super(key: key);

  final TextEditingController controller;
  String hint;
  IconData iconPath;
  int? maxlength;
  bool readOnly;
  TextInputType? keyboardTYPE;
  final FormFieldValidator<String> validators;
  final FormFieldValidator<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: D.W / 65, vertical: D.H / 60),
      child: TextFormField(
        readOnly: readOnly,
        controller:controller,
        validator: validators,
        onChanged: onChanged,
        maxLength: maxlength,
        cursorColor: ColorConstants.primaryBlueColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusColor: ColorConstants.whiteColor,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          errorBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          disabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: Icon(iconPath,color: Colors.grey,),
          errorMaxLines: 4,
          hintText: hint,
          labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        keyboardType: keyboardTYPE,
      ),
    );
  }
}