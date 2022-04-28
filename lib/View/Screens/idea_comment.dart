import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class IdeaComment extends StatefulWidget {
  const IdeaComment({Key? key}) : super(key: key);

  @override
  State<IdeaComment> createState() => _IdeaCommentState();
}

class _IdeaCommentState extends State<IdeaComment> {
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
                      "Comments",
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
                SizedBox(
                  width: D.W / 6,
                ),
                Text(
                  "USERNAME",
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 5.5,
                ),
                Text(
                  'COMMENT',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W /12,
                ),
                Text(
                  'CREATED ON',
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
              'Tejas patel',
              'employer@gmail.com',
              'afdfdd',
              '7th Aug,2022'
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
              'Rahul solanki',
              'employer@gmail.com',
              'stjhhhd',
              '10th may,2022'
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
              'Raj arora',
              'ali@gmail.com',
              'nmfgjfdnjf',
              '2nd jan,2022'
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
              'Mahesh Roy',
              'employer@gmail.com',
              'abcdef',
              '11 feb,2022'
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
                'Mahesh ',
                'Maheshjd@gmail.com',
                'nice',
                '11 feb,2022'
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
                'Roy',
                'Roym@gmail.com',
                'what',
                '11 feb,2022'
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
                'Raj',
                'Rajabc@gmail.com',
                'maybe',
                '11 feb,2022'
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
                'Ravi',
                'Ravi123@gmail.com',
                'yes',
                '11 feb,2022'
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
                'zbcd',
                'zbcdsg@gmail.com',
                'hello',
                '11 feb,2022'
            ),
          ],
        ),
      ),
    );
  }


  Row _buildRow(
      String name,String maintext1, String maintext2, String subtext) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex :2,
          child: Column(
            children: [
              Text(
                name,
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: D.H / 80,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: D.H / 60,
              ),
              Text(
                maintext1,
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: D.H / 80,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            maintext2,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                color: Colors.blue,
                fontSize: D.H / 80,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Text(
            subtext,
            style: GoogleFonts.roboto(
                color: ColorConstants.greycolor,
                fontSize: D.H / 80,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
