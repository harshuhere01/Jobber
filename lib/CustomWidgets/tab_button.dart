import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class TabButton extends StatelessWidget {
  TabButton(
      {Key? key,
      required this.selectedPage,
      required this.pageNumber,
      required this.color,
      required this.borderColor,
      required this.text,
      required this.onPressed})
      : super(key: key);

  int selectedPage;
  int pageNumber;
  String text;
  Color? color;
  Color borderColor;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        // decoration: BoxDecoration(
        //   color: selectedPage == pageNumber ? Colors.blue : Colors.transparent,
        //   borderRadius: BorderRadius.circular(4.0),
        // ),
        padding: EdgeInsets.symmetric(
          vertical: D.H / 80,
          // horizontal: D.W / 100,
          // selectedPage == pageNumber ? 13.0 : 0,
        ),
        child: Container(
          height: D.H/30,
          width: D.H/30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(color: ColorConstants.blackColor)),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                  color: ColorConstants.blackColor,
                  fontSize: D.H / 70,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: D.H/42),
      child: Container(
        height: D.H/100,

        color: ColorConstants.primaryBlueColor,
      ),
    );
  }
}

