import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  TextEditingController feedBackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        title: Text(
          'About US',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: D.H / 45,
            color: ColorConstants.blackColor,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              CupertinoIcons.left_chevron,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(height: 200,child: SvgPicture.asset("assets/images/termsandcondition.svg",color: ColorConstants.primaryBlueColor,),),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'About Jobber App',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: D.H / 35,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Lorem Ipsum is simply dup iet m Ips ng versions of Lorem Ipsum.',                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: D.H / 60,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Information Collection and Use',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: D.H / 35,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the ts containing Lorem Ipsum passages, and more recently with desktop publishing softwpsum passages, and more recently with desktop publishing softwapsum passages, and more recently with desktop publishing softwrpsum passages, and more recently with desktop publishing softwepsum passages, and more recently with desktop publishing softw psum passages, and more recently with desktop publishing softwlike Aldus PageMaker including versions of Lorem Ipsum.',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: D.H / 60,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
