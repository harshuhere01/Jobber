import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key,required this.text,required this.color,required this.textColor,required this.bordercolor,required this.onTap}) : super(key: key);
  String text;
  Color color;
  Color textColor;
  Color bordercolor;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: D.W/18),
      child: InkWell(
        onTap:()=> onTap(),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: bordercolor,width: 2),
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          height: D.H/16,child: Center(child: Text(text,style: GoogleFonts.arimo(color: textColor,fontWeight: FontWeight.w400,fontSize: D.H/40,),),),),
      ),
    );
  }
}