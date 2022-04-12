import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';

import '../../Utils/dimensions.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  _FollowingScreenState createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Followings",
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
            Row(
              children: [
                Text(
                  "NAME",
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 2.3,
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: ColorConstants.greycolor,
                ),
                SizedBox(
                  width: D.W / 40,
                ),
                Text(
                  'OFFICES',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 9.5,
                ),
                Text(
                  'PHONE',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(
              'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
              'JC consulting',
              'jcconsulting@jconsolting.com',
            ),
            SizedBox(
              height: D.H / 50,
            ),
            SizedBox(
                width: D.W / 1.6,
                child: Divider(
                  color: ColorConstants.greycolor,
                  thickness: 2,
                )),
            SizedBox(
              height: D.H / 50,
            ),
            _buildSecondLastRow(),
            SizedBox(
              height: D.H / 50,
            ),
            _buildLastRow(),
          ],
        ),
      ),
    );
  }

  Row _buildRow(
      String imageURL, String maintext2, String subtext) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  imageURL,
                  height: D.H / 15,
                  width: D.H / 15,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: D.W / 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maintext2,
                    style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontSize: D.H / 70,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: D.H / 200,
                  ),
                  Text(
                    subtext,
                    style: GoogleFonts.roboto(
                        color: ColorConstants.greycolor,
                        fontSize: D.H / 80,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: D.W / 9,
              ),
              Text(
                '2',
                style: GoogleFonts.roboto(
                    color: ColorConstants.greycolor,
                    fontSize: D.H / 60,
                    fontWeight: FontWeight.w500),
              ),
               SizedBox(
                width: D.W / 6.5,
              ),
              Text(
                '943\n243\n2428',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: ColorConstants.greycolor,
                    fontSize: D.H / 60,
                    fontWeight: FontWeight.w500),
              ),

            ],
          ),
        ),
      ],
    );
  }
  Row _buildSecondLastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Show ',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
        Container(
          width: D.W/8,
          padding: EdgeInsets.symmetric(horizontal: D.H/200,vertical: D.H/150),
          decoration: BoxDecoration(
            color: ColorConstants.greycolor.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10',
                style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: D.H / 70,
                    fontWeight: FontWeight.w400),
              ),
              Icon(Icons.arrow_drop_down,color: ColorConstants.blackColor,size: D.H/70,),
            ],
          ),
        ),
        Text(
          ' entries ',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: D.H/50,),
        Text(
          'Showing 1 to 1 of 1 entries',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
  Row _buildLastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Previous  ',
          style: GoogleFonts.roboto(
              color: ColorConstants.greycolor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
        Container(

          padding: EdgeInsets.symmetric(horizontal: D.H/70,vertical: D.H/100),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              '1',
              style: GoogleFonts.roboto(
                  color: ColorConstants.whiteColor,
                  fontSize: D.H / 70,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Text(
          '  Next ',
          style: GoogleFonts.roboto(
              color: ColorConstants.greycolor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }


}
