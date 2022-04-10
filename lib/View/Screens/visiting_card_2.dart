import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_border_textform_field.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class VisitingCard2 extends StatefulWidget {
  VisitingCard2({Key? key,required this.onTap}) : super(key: key);
  Function onTap;
  @override
  State<VisitingCard2> createState() => _VisitingCard2State();
}

class _VisitingCard2State extends State<VisitingCard2> {

  TextEditingController experiencecontroller = TextEditingController();
  TextEditingController jobtitlecontroller = TextEditingController();
  TextEditingController companynamecontroller = TextEditingController();
  double _value = 50;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience Details',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: D.H / 150,
          ),Center(
            child: Text(
              'Do you have any experience?',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.greycolor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: D.H / 150,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            WelcomePageRoundedButton(
              textcolor: ColorConstants.whiteColor,
              color: ColorConstants.primaryBlueColor,
              bordercolor: ColorConstants.primaryBlueColor,
              text: 'Yes',
              fontsize: 22,
              height: D.H / 20,
              width: D.H / 10,
              btnradius: D.H/100,
              fontweight: FontWeight.w500,
              onTap: () {
              },
            ),
              SizedBox(width: D.W/20,),
              WelcomePageRoundedButton(
                textcolor: ColorConstants.blackColor,
                color: ColorConstants.whiteColor,
                bordercolor: ColorConstants.blackColor,
                text: 'No',
                fontsize: 22,
                height: D.H / 20,
                width: D.H / 10,
                btnradius: D.H / 100,
                fontweight: FontWeight.w500,
                onTap: () {},
              ),
            ],),
          SizedBox(
            height: D.H / 102,
          ),
          CustomBorderTextFormField(
              controller: jobtitlecontroller,
              readOnly: false,
              hint: "Name",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),
          CustomBorderTextFormField(
              controller: experiencecontroller,
              readOnly: false,
              hint: "Job City",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),
          CustomBorderTextFormField(
              controller: companynamecontroller,
              readOnly: false,
              hint: "Job City",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: D.H/100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current monthly salary',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: D.H / 60,
                    fontWeight: FontWeight.w400,
                  ),
                ), Text(
                  '₹25000/. Rs',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: D.H / 60,
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ],
            ),
          ),
          SfSlider(
            activeColor: ColorConstants.primaryBlueColor,
            min: 0.0,
            max: 100.0,
            value: _value,
            onChanged: (dynamic value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Expanded(child: SizedBox()),
          VisitingCardButton(
            color: ColorConstants.primaryBlueColor,
            text: 'Next',
            fontsize: 22,
            height: D.H / 20,
            width: D.W,
            btnradius: D.H/100,
            fontweight: FontWeight.w900,
            onTap: () {
              widget.onTap();
            },
          ),
        ],
      ),
    );
  }
}
