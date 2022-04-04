import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/dimensions.dart';

class CustomSqureButton extends StatelessWidget {
  CustomSqureButton({Key? key,required this.text,required this.color,required this.textColor,required this.bordercolor,required this.onTap}) : super(key: key);
  String text;
  Color color;
  Color textColor;
  Color bordercolor;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> onTap(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: bordercolor,width: 2),
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: D.H/16,child: Center(child: Text(text,style: GoogleFonts.arimo(color: textColor,fontWeight: FontWeight.w400,fontSize: D.H/40,),),),),
    );
  }
}