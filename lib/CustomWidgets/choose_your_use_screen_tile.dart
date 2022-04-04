import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class ChooseYourUseTile extends StatelessWidget {
  ChooseYourUseTile({
    Key? key,
    required this.onChenaged,
    required this.bottomRadioValue,
    required this.iconpath,
    required this.text,
  }) : super(key: key);
  String iconpath;
  String text;
  Function onChenaged;
  int bottomRadioValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(D.H/50),
      ),
      elevation: 5,
      child: Container(
        height: D.H / 9,
        width: D.W,
        decoration: BoxDecoration(
          // border: Border.all(color: bordercolor,width: 2),
          color: ColorConstants.primaryBlueColor,
          borderRadius: BorderRadius.all(Radius.circular(D.H/50)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: bottomRadioValue,
                  fillColor: MaterialStateProperty.all(ColorConstants.blackColor),
                  groupValue: bottomRadioValue,
                  onChanged: (value) {
                    onChenaged();
                  },
                ),
              ],
            ),
            Image.asset(iconpath),
            SizedBox(
              width: D.W / 30,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: ColorConstants.blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
