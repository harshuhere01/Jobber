import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  TextEditingController feedBackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        title: Text(
          'Feedback',
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
                      'How Would You Rate Our App?',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: D.H / 45,
                        color: ColorConstants.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: ColorConstants.primaryBlueColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Please Let us Know How Can \n     We improve ourselves',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: D.H / 60,
                        color: ColorConstants.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: feedBackController,
                      maxLines: 10,
                      cursorColor: ColorConstants.primaryBlueColor,
                      style: GoogleFonts.roboto(),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: D.W / 40, vertical: D.H / 60),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(
                              color: ColorConstants.primaryBlueColor, width: 2.0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFD7D7D7), width: 2.0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(
                              color:  ColorConstants.primaryBlueColor, width: 1.0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        counterText: "",
                        border: OutlineInputBorder(
                          borderSide:  BorderSide(
                              color: ColorConstants.primaryBlueColor, width: 1.0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorMaxLines: 1,
                        hintText: "FeedBack",
                        labelStyle: GoogleFonts.roboto(
                            fontSize: 16.0, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: D.H / 70,
                    ),

                    Row(
                      children: [
                        WelcomePageRoundedButton(
                          color: ColorConstants.primaryBlueColor,
                          text: 'SAVE',
                          fontsize: 14,
                          height: D.H / 20,
                          width: D.W/5,
                          btnradius: D.H / 80,
                          fontweight: FontWeight.w500,
                          onTap: () {

                              if(feedBackController.text.isNotEmpty){
                              }else{
                                CommonUtils.showRedToastMessage("Please give feedback");

                              }
                            setState(() {});
                          },
                          bordercolor: ColorConstants.primaryBlueColor,
                          textcolor: ColorConstants.whiteColor,
                        ),
                        SizedBox(
                          width: D.H / 70,
                        ),
                        WelcomePageRoundedButton(
                          color: ColorConstants.greycolor.withOpacity(0.5),
                          text: 'CANCEL',
                          fontsize: 14,
                          height: D.H / 20,
                          width: D.W/5,
                          btnradius: D.H / 80,
                          fontweight: FontWeight.w500,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          bordercolor: ColorConstants.greycolor.withOpacity(0.5),
                          textcolor: ColorConstants.whiteColor,
                        ),
                      ],
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
