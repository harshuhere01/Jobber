import 'package:flutter/material.dart';

import '../Constants/color_constants.dart';
import '../Utils/dimensions.dart';

class CUstomSearchBar extends StatelessWidget {
  CUstomSearchBar(
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

      padding: EdgeInsets.symmetric(horizontal: D.W /  60, vertical: D.H / 100),
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
            contentPadding: EdgeInsets.all(8),
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
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            counterText: "",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            errorMaxLines: 4,
            hintText: hint,
            labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          keyboardType: keyboardTYPE,
        ),
      ),
    );
  }
}