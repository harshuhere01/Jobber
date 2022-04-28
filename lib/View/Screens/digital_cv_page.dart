import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_textform_field_for_profile.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/preferences.dart';

class DigitalCV extends StatefulWidget {
  const DigitalCV({Key? key}) : super(key: key);

  @override
  State<DigitalCV> createState() => _DigitalCVState();
}

class _DigitalCVState extends State<DigitalCV> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              CupertinoIcons.left_chevron,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 50),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Text(
                      "Digital CV",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: D.H / 50,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: D.H / 30,
            ),
            Padding(
              padding: EdgeInsets.all(D.H / 100),
              child: PreferenceUtils.getString('visitingcardname') == null ||
                      PreferenceUtils.getString('visitingcardname') == ''
                  ? Image.asset('assets/images/demo_visiting_card.png')
                  : Stack(children: [
                      Image.asset('assets/images/edit_visiting_card.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:9,
                            child: SizedBox(
                              height: 190,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                child: Image.file(
                                  File(
                                    PreferenceUtils.getString(
                                        'visitingcardphoto'),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 18,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: D.W / 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    PreferenceUtils.getString(
                                        'visitingcardname'),
                                    style: GoogleFonts.roboto(
                                      color: ColorConstants.whiteColor,
                                      fontSize: D.H / 40,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: D.H / 70,
                                  ),
                                  Text(
                                    '${PreferenceUtils.getString('visitingcardjobtitle')}\n${PreferenceUtils.getString('visitingcardcompanyname')}',
                                    style: GoogleFonts.roboto(
                                      color: ColorConstants.whiteColor,
                                      fontSize: D.H / 60,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: D.H / 50,
                                  ),
                                  Text(
                                    '${PreferenceUtils.getString('visitingcardeducation')} | ${PreferenceUtils.getString('visitingcardexperience')} | ${PreferenceUtils.getString('visitingcardjobcity')}',
                                    style: GoogleFonts.roboto(
                                      color: ColorConstants.whiteColor,
                                      fontSize: D.H / 100,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
            ),
            SizedBox(
              height: D.H / 30,
            ),
            Text(
              "Share With Us Friends",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: D.H / 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: D.H / 50,
            ),
            Text(
              "(Social Media links)",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: D.H / 50,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: D.H / 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                  ],
                ),
                SizedBox(
                  height: D.W / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                    SizedBox(
                      width: D.W / 20,
                    ),
                    _buildSocial(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _buildSocial() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 50),
      decoration: BoxDecoration(
        color: ColorConstants.greycolor.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Icon(
        Icons.facebook,
        color: Colors.blue[900],
        size: D.H / 25,
      ),
    );
  }
}
