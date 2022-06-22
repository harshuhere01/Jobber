import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/text_medium_500.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/visiting_card_main.dart';

class CreateVisitingCardMainPage extends StatefulWidget {
  const CreateVisitingCardMainPage({Key? key}) : super(key: key);

  @override
  State<CreateVisitingCardMainPage> createState() =>
      _CreateVisitingCardMainPageState();
}

class _CreateVisitingCardMainPageState
    extends State<CreateVisitingCardMainPage> {
  bool? checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: D.H / 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: D.H / 30,
                  ),
                  Center(
                    child: Container(
                      height: D.H / 10,
                      width: D.H / 5,
                      child: Image.asset("assets/images/splashimage.png"),
                    ),
                  ),
                  SizedBox(
                    height: D.H / 20,
                  ),
                  TextMedium500(
                    text: 'Let\’s start with creating your visiting card',
                    fontSize: D.H / 35,
                    textColor: ColorConstants.blackColor,
                  ),
                  SizedBox(
                    height: D.H / 20,
                  ),
                  Text(
                    'This will be your CV / Resume that helps HR, Companies and other professionals to know you',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: ColorConstants.greycolor,
                        fontSize: D.H / 50,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: D.H / 20,
                  ),
                  Image.asset('assets/images/visiting_card_bg.png'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(

                          activeColor: ColorConstants.primaryBlueColor,
                          value: checkbox,
                          onChanged: (val) {
                            setState(() {
                              checkbox = val;
                            });
                          }),
                      Wrap(
                        children: [
                          Text(
                            'I would like to get latest job updates\non Whatsapp',
                            style: GoogleFonts.roboto(
                                color: ColorConstants.blackColor,
                                fontSize: D.H / 55,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: D.H / 50,
                  ),
                  WelcomePageRoundedButton(
                    color: ColorConstants.primaryBlueColor,
                    bordercolor: ColorConstants.primaryBlueColor,
                    textcolor: ColorConstants.whiteColor,
                    text: 'Let’s go!',
                    fontsize: 20,
                    height: D.H / 15,
                    width: D.H / 2.5,
                    btnradius: D.H / 50,
                    fontweight: FontWeight.w900,
                    onTap: () {
                      NavigationHelpers.redirect(context, VisitingCardMain());
                    },
                  ),
                  SizedBox(
                    height: D.H / 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
