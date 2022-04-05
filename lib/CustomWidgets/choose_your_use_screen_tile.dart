import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class ChooseYourUseTile extends StatelessWidget {
  ChooseYourUseTile({
    Key? key,
    required this.onChenaged,
    required this.radioValue,
    required this.radioGroupValue,
    required this.iconpath,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  String iconpath;
  String text;
  Function onChenaged;
  int radioValue;
  int radioGroupValue;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onTap();},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(D.H/50),
        ),
        elevation: 5,
        child: Container(
          height: D.H / 9,
          width: D.W,
          decoration: BoxDecoration(
            // border: Border.all(color: bordercolor,width: 2),
            color:radioValue == radioGroupValue ? ColorConstants.primaryBlueColor : ColorConstants.chooseusecardcolor,
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
                    value: radioValue,
                    fillColor: MaterialStateProperty.all(ColorConstants.blackColor),
                    groupValue: radioGroupValue,
                    onChanged: (value) {
                      onChenaged(value);
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
      ),
    );
  }
}
