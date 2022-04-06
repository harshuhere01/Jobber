import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/color_constants.dart';
import '../Utils/dimensions.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {Key? key,
        required this.controller,
        required this.readOnly,
        required this.hint,
        required this.iconPath,
        required this.validators,
        required this.keyboardTYPE,
        this.maxlength, this.onChanged,
        required this.obscured,});

  final TextEditingController controller;
  String hint;
  IconData iconPath;
  int? maxlength;
  bool readOnly;
  bool obscured;
  TextInputType? keyboardTYPE;
  final FormFieldValidator<String> validators;
  final FormFieldValidator<String>? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscured = false;

  final textFieldFocusNode = FocusNode();
  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }
  @override
  void initState() {
    _obscured=widget.obscured;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: D.W / 65, vertical: D.H / 60),
      child: TextFormField(
        obscureText: _obscured,
        readOnly: widget.readOnly,
        controller:widget.controller,
        validator: widget.validators,
        onChanged: widget.onChanged,
        maxLength: widget.maxlength,
        cursorColor: ColorConstants.primaryBlueColor,
        decoration: InputDecoration(
          suffixIcon: widget.obscured?Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
            child: GestureDetector(
              onTap: _toggleObscured,
              child: Icon(
                _obscured
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
                size: 24,
                color: ColorConstants.primaryBlueColor,
              ),
            ),
          ):null,
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
          prefixIcon: Icon(widget.iconPath,color: Colors.grey,),
          errorMaxLines: 4,
          hintText: widget.hint,
          labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        keyboardType: widget.keyboardTYPE,
      ),
    );
  }
}