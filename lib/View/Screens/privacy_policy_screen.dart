import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  TextEditingController feedBackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        title: Text(
          'Privacy Policy',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Column(
                  children: [
                    Text(
                      'Privacy Policy Of Jobber App',
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
                      'Lorem Ipsum is simply dup iet sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: GoogleFonts.roboto(
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
                      'Lorem Ipsum is simply dummy text of the pince pesetting Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
      ),
    );
  }
}
