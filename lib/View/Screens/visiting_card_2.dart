import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_border_textform_field.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../Utils/common_utils.dart';

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
  bool yesWorkExperience=true;
  bool noWorkExperience=false;
  final _formkey = GlobalKey<FormState>();

  double _value = 50000;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 200),
        child: Form(
          key: _formkey,
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
                height: D.H / 200,
              ),
              Center(
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
                height: D.H / 200,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                WelcomePageRoundedButton(
                  textcolor: yesWorkExperience?ColorConstants.whiteColor: ColorConstants.blackColor,
                  color: yesWorkExperience?ColorConstants.primaryBlueColor: ColorConstants.whiteColor,
                  bordercolor:yesWorkExperience? ColorConstants.primaryBlueColor:ColorConstants.blackColor,
                  text: 'Yes',
                  fontsize: 22,
                  height: D.H / 20,
                  width: D.H / 10,
                  btnradius: D.H/100,
                  fontweight: FontWeight.w500,
                  onTap: () {
                    yesWorkExperience=true;
                    noWorkExperience=false;
                    setState(() {

                    });
                  },
                ),
                  SizedBox(width: D.W/20,),
                  WelcomePageRoundedButton(
                    textcolor: noWorkExperience?ColorConstants.whiteColor: ColorConstants.blackColor,
                    color: noWorkExperience?ColorConstants.primaryBlueColor: ColorConstants.whiteColor,
                    bordercolor:noWorkExperience? ColorConstants.primaryBlueColor:ColorConstants.blackColor,
                    text: 'No',
                    fontsize: 22,
                    height: D.H / 20,
                    width: D.H / 10,
                    btnradius: D.H / 100,
                    fontweight: FontWeight.w500,
                    onTap: () {
                      noWorkExperience=true;
                      yesWorkExperience=false;
                      setState(() {

                      });
                    },
                  ),
                ],),
              SizedBox(
                height: D.H / 110,
              ),
              yesWorkExperience?CustomBorderTextFormField(
                  controller: experiencecontroller,
                  readOnly: false,
                  hint: "Total work experience",
                  validators: (e) {
                    if (experiencecontroller.text == null ||
                        experiencecontroller.text == '') {
                      return '*Please enter Total experience';
                    }
                  },
                  keyboardTYPE: TextInputType.name):Container(),
              CustomBorderTextFormField(
                  controller: jobtitlecontroller,
                  readOnly: false,
                  hint: "Job title",
                  validators: (e) {
                    if (jobtitlecontroller.text == null ||
                        jobtitlecontroller.text == '') {
                      return '*Please enter Job title';
                    }
                  },
                  keyboardTYPE: TextInputType.name),
              CustomBorderTextFormField(
                  controller: companynamecontroller,
                  readOnly: false,
                  hint: "Company Name",
                  validators: (e) {
                    if (companynamecontroller.text == null ||
                        companynamecontroller.text == '') {
                      return '*Please enter Company name';
                    }
                  },
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
                      '₹${_value.toInt().toString()}/. Rs',
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
                max: 100000.0,
                value: _value,
                onChanged: (dynamic value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              VisitingCardButton(
                color: ColorConstants.primaryBlueColor,
                text: 'Next',
                fontsize: 22,
                height: D.H / 20,
                width: D.W,
                btnradius: D.H/100,
                fontweight: FontWeight.w900,
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    if(_value==0){
                      CommonUtils.showRedToastMessage("Please select monthly salary");
                    }else{
                      widget.onTap();

                    }
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
