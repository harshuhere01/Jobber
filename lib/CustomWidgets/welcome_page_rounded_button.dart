import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class WelcomePageRoundedButton extends StatelessWidget {
  WelcomePageRoundedButton(
      {Key? key,
    required this.color,
      required this.onTap,
      required this.text,
      required this.height,
      required this.width,
      required this.btnradius,
      required this.fontweight,
      required this.fontsize})
      : super(key: key);
  Function onTap;
  Color color;
  String text;
  double height;
  double width;
  double fontsize;
  double btnradius;
  FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        // padding: EdgeInsets.symmetric(horizontal: D.W / 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(btnradius)),
        ),
        child: Text(text,
            style: GoogleFonts.roboto(
              color: ColorConstants.whiteColor,
              fontWeight: fontweight,
              fontSize: fontsize,
            )
            ),
      ),
    );
  }
}
