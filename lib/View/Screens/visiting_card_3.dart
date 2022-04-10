import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_border_textform_field.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/Utils/dimensions.dart';

class VisitingCard3 extends StatefulWidget {
  VisitingCard3({Key? key,required this.onTap}) : super(key: key);
  Function onTap;
  @override
  State<VisitingCard3> createState() => _VisitingCard3State();
}

class _VisitingCard3State extends State<VisitingCard3> {

  TextEditingController educationcontroller = TextEditingController();
  TextEditingController degreecontroller = TextEditingController();
  TextEditingController universcitycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education Details',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: D.H / 100,
          ),
          CustomBorderTextFormField(
              controller: educationcontroller,
              readOnly: false,
              hint: "Education",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),
          CustomBorderTextFormField(
              controller: degreecontroller,
              readOnly: false,
              hint: "Degree / Specialization",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),
          CustomBorderTextFormField(
              controller: universcitycontroller,
              readOnly: false,
              hint: "University / Institute",
              validators: (e) {},
              keyboardTYPE: TextInputType.name),

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
