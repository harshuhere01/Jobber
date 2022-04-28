import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  String dropdownname = 'Live';
  String dropdownname1 = 'Live';
  String dropdownname2 = 'Live';
  String dropdownname3 = 'Live';

  Color textColor = Colors.black54;
  Color? dropdownColor = Colors.grey[300];
  Color textColor2 = Colors.black54;
  Color? dropdownColor2 = Colors.grey[300];
  Color textColor3 = Colors.black54;
  Color? dropdownColor3 = Colors.grey[300];
  Color textColor4 = Colors.black54;
  Color? dropdownColor4 = Colors.grey[300];

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
                      "JOBS",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: D.H / 50,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: D.H / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "JOB TITLE",
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 20,
                ),
                Text(
                  'EXPIRES ON',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 20,
                ),
                Text(
                  'STATUS',
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
            _buildRow(dropdownname,'Android Engineer', '15th Apr,2022', 'employer@gmail.com',
                Colors.red, Colors.red,dropdownColor!,textColor, (val) {
              dropdownname = val.toString();
              if (val == 'Closed') {
                textColor = Colors.black;
                dropdownColor = Colors.red;
                setState(() {});
              }

              setState(() {});
            }),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(dropdownname1,'Blah', '24th Sep,2021', 'employer@gmail.com', Colors.red,
                Colors.red,dropdownColor2!,textColor2, (val) {
              dropdownname1 = val.toString();
              if (val == 'Closed') {
                textColor2 = Colors.black;
                dropdownColor2 = Colors.red;
                setState(() {});
              }

              setState(() {});
            }),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(dropdownname2,'Laravel Developer', '29th Apr,2022', 'ali@gmail.com',
                Colors.blue, Colors.blue,dropdownColor3!,textColor3, (val) {
              dropdownname2 = val.toString();
              if (val == 'Closed') {
                textColor3 = Colors.black;
                dropdownColor3 = Colors.red;
                setState(() {});
              }

              setState(() {});
            }),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(dropdownname3,'php developer', '16th Feb,2022', 'employer@gmail.com',
                Colors.red, Colors.red,dropdownColor4!,textColor4, (val) {
              dropdownname3 = val.toString();
              if (val == 'Closed') {
                textColor4 = Colors.black;
                dropdownColor4 = Colors.red;
                setState(() {});
              }

              setState(() {});
            }),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
          ],
        ),
      ),
    );
  }

  Row _buildRow(String drpdwnname,String maintext1, String maintext2, String subtext,
      Color expiresoncolor, Color maintext2color,Color dropcolor,Color txtColor, Function onchanged) {
    return Row(
      children: [
        Expanded(
          child: Text(
            maintext1,
            style: GoogleFonts.roboto(
                color: Colors.blue,
                fontSize: D.H / 80,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: expiresoncolor.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                maintext2,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: maintext2color,
                    fontSize: D.H / 80,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () => () {},
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: dropcolor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: drpdwnname,
                      style: TextStyle(color: txtColor),
                      items: <String>['Live', 'Paused', 'Closed']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        onchanged(val);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
