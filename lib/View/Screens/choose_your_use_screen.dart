import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/choose_your_use_screen_tile.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/dash_board_screen.dart';

class ChooseYourUseScreen extends StatefulWidget {
  const ChooseYourUseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseYourUseScreen> createState() => _ChooseYourUseScreenState();
}

class _ChooseYourUseScreenState extends State<ChooseYourUseScreen> {
  bool? bottomIsChecked = false;
  bool bottomIsSwitched = false;
  int radioGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Choose\nYour Use ?",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 40),
                    ),
                  ],
                ),
                SizedBox(
                  height: D.H / 50,
                ),
                Text(
                  "Select what you want from application, you never change your type!",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: D.H / 50,
                      color: Colors.black.withOpacity(0.5)),
                ),
                SizedBox(
                  height: D.H / 50,
                ),
                ChooseYourUseTile(
                  radioValue: 0,
                  onChenaged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },
                  onTap: (){
                    setState(() {
                      radioGroupValue = 0;
                    });
                  },
                  radioGroupValue: radioGroupValue,
                  text: 'Find A Job',
                  iconpath: 'assets/images/opportunity.png',
                ),
                ChooseYourUseTile(
                  onChenaged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },
                  onTap: (){
                    setState(() {
                      radioGroupValue = 1;
                    });
                  },
                  radioValue: 1,
                  radioGroupValue: radioGroupValue,
                  text: 'Hire A Candidates',
                  iconpath: 'assets/images/amazon_shopping_app.png',
                ),
                ChooseYourUseTile(
                  onChenaged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },
                  onTap: (){
                    setState(() {
                      radioGroupValue = 2;
                    });
                  },
                  radioValue: 2,
                  radioGroupValue: radioGroupValue,
                  text: 'Write a Blog',
                  iconpath: 'assets/images/blogger.png',
                ),
                ChooseYourUseTile(
                  onChenaged: (value) {
                    setState(() {
                      radioGroupValue = value;
                    });
                  },onTap: (){
                  setState(() {
                    radioGroupValue = 3;
                  });
                },
                  radioValue: 3,
                  radioGroupValue: radioGroupValue,
                  text: 'Start a Business',
                  iconpath: 'assets/images/insidea.png',
                ),
              ],
            ),
            WelcomePageRoundedButton(
              bordercolor: ColorConstants.primaryBlueColor,
              color: ColorConstants.primaryBlueColor,
              textcolor: ColorConstants.whiteColor,
              text: 'Next',
              fontsize: 22,
              height: D.H / 15,
              width: D.H / 2.5,
              btnradius: D.H / 50,
              fontweight: FontWeight.w500,
              onTap: () {
                NavigationHelpers.redirect(context, DashBoardScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
