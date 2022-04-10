import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/dash_board_screen.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/dimensions.dart';

class JobAppliedScreen extends StatefulWidget {
  const JobAppliedScreen({Key? key}) : super(key: key);

  @override
  _JobAppliedScreenState createState() => _JobAppliedScreenState();
}

class _JobAppliedScreenState extends State<JobAppliedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                height: D.H / 5.5,
                width: D.W / 2.5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    "assets/images/checkedicon.svg",
                    color: ColorConstants.primaryBlueColor,
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Successfully Applied",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: D.H/8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.W / 8),
              child: WelcomePageRoundedButton(
                color: ColorConstants.primaryBlueColor,
                text: 'Watch Your Applications',
                fontsize: 18,
                height: D.H / 15,
                width: D.W,
                btnradius: D.H / 50,
                fontweight: FontWeight.w500,
                onTap: () {
                  NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
