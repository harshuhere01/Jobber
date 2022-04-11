import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimensions.dart';
class DrawerListTile extends StatelessWidget {
  String iconPath;
  String name;
  Color color;
  Function function;
   DrawerListTile( this.iconPath, this.name,this.color,this.function);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){function.call();},
      child: Row(children: [
        Container(
          height: D.H/20,width: D.W/10,
          decoration: BoxDecoration(
              color:color,
              borderRadius: BorderRadius.all(Radius.circular(25))),

          child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(iconPath,color: Colors.white,),
        ),),
        SizedBox(width: 18,),
        Text(name,style: GoogleFonts.openSans(fontWeight: FontWeight.w700,color: Colors.black.withOpacity(0.8)),)
      ],),
    );
  }
}
