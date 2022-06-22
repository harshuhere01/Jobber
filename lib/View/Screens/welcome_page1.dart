import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/auth_screen.dart';

class WelcomePage1 extends StatelessWidget {
  WelcomePage1({Key? key, required this.onTap}) : super(key: key);
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){NavigationHelpers.redirect(context, AuthScreen());},
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(
                    vertical: D.H / 50, horizontal: D.H / 30),
                child: Text(
                  'Skip',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
                height: D.H/3.5,
                width: D.H/1.8,
                child: Center(child: SvgPicture.asset('assets/images/welcome_page1.svg'))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.H / 100),
              child: Text(
                'We Possess The Perfect Formula For Your Success!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.H / 100),
              child: Text(
                'Call us and ask how you can make your dreams come trueCall us and ask how you can',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            WelcomePageRoundedButton(
              textcolor: ColorConstants.whiteColor,
              color: ColorConstants.primaryBlueColor,
              bordercolor: ColorConstants.primaryBlueColor,
              text: 'Next',
              fontsize: 20,
              height: D.H / 12,
              width: D.H / 12,
              btnradius: D.H / 5,
              fontweight: FontWeight.bold,
              onTap: () {
                onTap();
              },
            ),
          ],
        ),
      ),
    );
  }
}
