import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_border_textform_field.dart';
import 'package:jobber/CustomWidgets/gender_box.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/Utils/common_utils.dart';
import 'package:jobber/Utils/dimensions.dart';

class VisitingCard1 extends StatefulWidget {
  VisitingCard1({Key? key, required this.onTap}) : super(key: key);
  Function onTap;

  @override
  State<VisitingCard1> createState() => _VisitingCard1State();
}

class _VisitingCard1State extends State<VisitingCard1> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController jobcitycontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  int radioGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Details',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.blackColor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: D.H / 80,
            ),
            CustomBorderTextFormField(
                controller: namecontroller,
                readOnly: false,
                hint: "Name",
                validators: (e) {
                  if (namecontroller.text == null ||
                      namecontroller.text == '') {
                    return '*Please enter Name';
                  }
                },
                keyboardTYPE: TextInputType.name),
            CustomBorderTextFormField(
                controller: jobcitycontroller,
                readOnly: false,
                hint: "Job City",
                validators: (e) {
                  if (jobcitycontroller.text == null ||
                      jobcitycontroller.text == '') {
                    return '*Please enter City';
                  }
                },
                keyboardTYPE: TextInputType.name),
            Text(
              'Gender :',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.greycolor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: D.H / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenderBox(
                    radioGroupValue: radioGroupValue,
                    radioValue: 1,
                    onChenaged: (val) {
                      setState(() {
                        radioGroupValue = val;
                      });
                    },
                    ontap: () {
                      setState(() {
                        radioGroupValue = 1;
                      });
                    },
                    imgPath: 'assets/images/user_male.png'),
                SizedBox(
                  width: D.W / 10,
                ),
                GenderBox(
                    radioGroupValue: radioGroupValue,
                    radioValue: 2,
                    onChenaged: (val) {
                      setState(() {
                        radioGroupValue = val;
                      });
                    },
                    ontap: () {
                      setState(() {
                        radioGroupValue = 2;
                      });
                    },
                    imgPath: 'assets/images/female_user.png'),
              ],
            ),
            Expanded(
                child: SizedBox(
              height: D.H / 55,
            )),
            VisitingCardButton(
              color: ColorConstants.primaryBlueColor,
              text: 'Next',
              fontsize: 22,
              height: D.H / 20,
              width: D.W,
              btnradius: D.H / 100,
              fontweight: FontWeight.w900,
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  if(radioGroupValue==0){
                    CommonUtils.showRedToastMessage("Please select gender");
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
    );
  }
}
