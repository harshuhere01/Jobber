import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/dimensions.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                  vertical: D.H / 50, horizontal: D.H / 30),
              
            ),
            Center(child: SvgPicture.asset('assets/images/welcome_page3.svg')),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.H / 100),
              child: Text(
                'We Possess The Perfect Formula For Your Success!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: 25,
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
                    fontSize: 22,
                    fontWeight: FontWeight.w300),
              ),
            ),
            WelcomePageRoundedButton(
              color: ColorConstants.primaryBlueColor,
              text: 'Get Started',
              fontsize: 22,
              height: D.H / 15,
              width: D.H / 2.5,
              btnradius: D.H/50,
              fontweight: FontWeight.w500,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
