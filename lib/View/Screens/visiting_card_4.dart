import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';

class VisitingCard4 extends StatefulWidget {
  VisitingCard4({Key? key, required this.onTap}) : super(key: key);
  Function onTap;

  @override
  State<VisitingCard4> createState() => _VisitingCard4State();
}

class _VisitingCard4State extends State<VisitingCard4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: D.H / 50,
          ),
          Text(
            'Upload Your Profile Picture',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: D.H / 50,
          ),
          Text(
            'HR needs your profile picture to confirm if your profile is real and not fake',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor.withOpacity(0.75),
              fontSize: D.H / 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: D.H / 30,
          ),
          WelcomePageRoundedButton(
            textcolor: ColorConstants.whiteColor,
            color: ColorConstants.primaryBlueColor,
            bordercolor: ColorConstants.primaryBlueColor,
            text: 'Choose From Gallery',
            fontsize: 22,
            height: D.H / 17,
            width: D.H ,
            btnradius: D.H/100,
            fontweight: FontWeight.w900,
            onTap: () {
            },
          ),
          SizedBox(
            height: D.H / 50,
          ),
          WelcomePageRoundedButton(
            textcolor: ColorConstants.primaryBlueColor,
            color: ColorConstants.whiteColor,
            bordercolor: ColorConstants.primaryBlueColor,
            text: 'Upload From Camera',
            fontsize: 22,
            height: D.H / 17,
            width: D.H,
            btnradius: D.H / 100,
            fontweight: FontWeight.w900,
            onTap: () {},
          ),
          SizedBox(
            height: D.H / 50,
          ),
          Center(
            child: Text(
              'Skip for now',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.primaryBlueColor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
